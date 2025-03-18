import 'package:flutter/material.dart';
import '../constants/tw_constants.dart';
import '../theme/tw_colors.dart';
import 'tw_widget_extension.dart';
import 'package:logger/logger.dart';

var logger = Logger();

/// Extension to add the tw() method to widgets for applying multiple Tailwind utilities at once
extension TwParser on Widget {
  /// Apply multiple Tailwind utilities at once using a string syntax
  /// 
  /// Example: `Text('Hello').tw('p-4 text-lg font-bold text-blue-500')`
  Widget tw(String classNames) {
    final classes = classNames.split(' ').where((cls) => cls.isNotEmpty).toList();
    Widget current = this;
    
    for (final cls in classes) {
      final parts = cls.split(':');
      if (parts.length == 1) {
        current = _applyUtility(current, parts[0]);
      } else {
        current = _applyVariantUtility(current, parts);
      }
    }
    
    return current;
  }

  /// Apply a single utility to a widget
  Widget _applyUtility(Widget widget, String utility) {
    try {
      switch (utility.split('-')[0]) {
        case 'p':
          return _applyPadding(widget, utility);
        case 'm':
          return _applyMargin(widget, utility);
        case 'w':
        case 'h':
        case 'min':
        case 'max':
          return _applySizing(widget, utility);
        case 'bg':
        case 'text':
          return _applyColor(widget, utility);
        case 'font':
        case 'tracking':
        case 'leading':
          return _applyTypography(widget, utility);
        case 'rounded':
        case 'border':
          return _applyBorder(widget, utility);
        case 'opacity':
          return _applyOpacity(widget, utility);
        case 'flex':
        case 'justify':
        case 'items':
          return _applyFlex(widget, utility);
        // Add other utility cases here
        default:
          logger.w('Unknown utility: $utility');
          return widget;
      }
    } catch (e) {
      logger.e('Error applying utility: $utility', error: e);
      return widget;
    }
  }

  Widget _applyVariantUtility(Widget widget, List<String> parts) {
    final variant = parts[0];
    final utility = parts.sublist(1).join(':');

    if (variant == 'dark') {
      return _applyDarkModeUtility(widget, utility);
    } else if (TwConstants.breakpoints.containsKey(variant)) {
      return _applyResponsiveUtility(widget, utility, variant);
    }

    logger.w('Unknown variant: $variant');
    return widget;
  }

  Widget _applyPadding(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length < 2) return widget;
    
    // Handle padding utilities
    if (parts[0] == 'p') {
      if (parts.length == 2) return widget.p(parts[1]);
      if (parts.length == 3) return widget.p(parts[1]);
      return widget;
    }
    if (parts[0] == 'px' && parts.length > 1) return widget.px(parts[1]);
    if (parts[0] == 'py' && parts.length > 1) return widget.py(parts[1]);
    if (parts[0] == 'pt' && parts.length > 1) return widget.pt(parts[1]);
    if (parts[0] == 'pr' && parts.length > 1) return widget.pr(parts[1]);
    if (parts[0] == 'pb' && parts.length > 1) return widget.pb(parts[1]);
    if (parts[0] == 'pl' && parts.length > 1) return widget.pl(parts[1]);
    
    return widget;
  }

  Widget _applyMargin(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length < 2) return widget;
    
    // Handle margin utilities
    if (parts[0] == 'm' && parts.length > 1) return widget.m(parts[1]);
    if (parts[0] == 'mx' && parts.length > 1) return widget.mx(parts[1]);
    if (parts[0] == 'my' && parts.length > 1) return widget.my(parts[1]);
    if (parts[0] == 'mt' && parts.length > 1) return widget.mt(parts[1]);
    if (parts[0] == 'mr' && parts.length > 1) return widget.mr(parts[1]);
    if (parts[0] == 'mb' && parts.length > 1) return widget.mb(parts[1]);
    if (parts[0] == 'ml' && parts.length > 1) return widget.ml(parts[1]);
    
    return widget;
  }

  Widget _applySizing(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length < 2) return widget;
    
    // Handle sizing utilities
    if (parts[0] == 'w' && parts.length > 1) return widget.w(parts[1]);
    if (parts[0] == 'h' && parts.length > 1) return widget.h(parts[1]);
    if (parts[0] == 'min-w' && parts.length > 1) return widget.minW(parts[1]);
    if (parts[0] == 'min-h' && parts.length > 1) return widget.minH(parts[1]);
    if (parts[0] == 'max-w' && parts.length > 1) return widget.maxW(parts[1]);
    if (parts[0] == 'max-h' && parts.length > 1) return widget.maxH(parts[1]);
    
    return widget;
  }

  Widget _applyColor(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length < 2) return widget;
    
    final colorName = parts[1];
    final shade = parts.length > 2 ? int.tryParse(parts[2]) ?? 500 : 500;
    
    // Handle color utilities
    if (parts[0] == 'bg') {
      return widget.bg(colorName, shade);
    }
    if (parts[0] == 'text' && parts.length > 1) {
      // Handle text size
      if (TwConstants.fontSize.containsKey(parts[1])) {
        return widget.fontSize(parts[1]);
      }
      // Handle text color
      if (parts.length > 2 && parts[1] != 'opacity') {
        return widget.textColor(parts[1], shade);
      }
    }
    
    return widget;
  }

  Widget _applyTypography(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length < 2) return widget;
    
    // Handle typography utilities
    if (parts[0] == 'font') {
      if (parts.length > 1) {
        if (TwConstants.fontWeight.containsKey(parts[1])) {
          return widget.fontWeight(parts[1]);
        }
      }
    }
    if (parts[0] == 'tracking' && parts.length > 1) return widget.letterSpacing(parts[1]);
    if (parts[0] == 'leading' && parts.length > 1) return widget.lineHeight(parts[1]);
    
    return widget;
  }

  Widget _applyBorder(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts[0] == 'rounded') {
      if (parts.length == 1) return widget.rounded();
      if (parts.length > 1) return widget.rounded(parts[1]);
    }
    if (parts[0] == 'border') {
      if (parts.length == 1) return widget.border();
      
      String color = 'gray';
      int shade = 500;
      String width = 'DEFAULT';
      
      for (int i = 1; i < parts.length; i++) {
        // Check if it's a color
        if (TwColors.hasColor(parts[i])) {
          color = parts[i];
        }
        // Check if it's a shade
        else if (int.tryParse(parts[i]) != null) {
          shade = int.parse(parts[i]);
        }
        // Check if it's a width
        else if (TwConstants.borderWidth.containsKey(parts[i])) {
          width = parts[i];
        }
      }
      
      return widget.border(color, shade, width);
    }
    
    return widget;
  }

  Widget _applyOpacity(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.length != 2) return widget;
    return widget.opacity(parts[1]);
  }

  Widget _applyFlex(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.isEmpty) return widget;

    // Handle flex utilities
    if (parts[0] == 'flex') {
      if (parts.length == 1) return widget.flex();
      if (parts[1] == 'row') return widget.row();
      if (parts[1] == 'col') return widget.col();
    }
    if (parts[0] == 'justify') {
      if (parts.length > 1) {
        if (parts[1] == 'start') return widget.justifyStart();
        if (parts[1] == 'center') return widget.justifyCenter();
        if (parts[1] == 'end') return widget.justifyEnd();
        if (parts[1] == 'between') return widget.justifyBetween();
        if (parts[1] == 'around') return widget.justifyAround();
        if (parts[1] == 'evenly') return widget.justifyEvenly();
      }
    }
    if (parts[0] == 'items') {
      if (parts.length > 1) {
        if (parts[1] == 'start') return widget.itemsStart();
        if (parts[1] == 'center') return widget.itemsCenter();
        if (parts[1] == 'end') return widget.itemsEnd();
        if (parts[1] == 'stretch') return widget.itemsStretch();
      }
    }
    
    return widget;
  }

  /// Apply a utility only in dark mode
  Widget _applyDarkModeUtility(Widget widget, String utility) {
    return Builder(
      builder: (context) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        return isDark ? _applyUtility(widget, utility) : widget;
      },
    );
  }

  /// Apply a utility only at a specific breakpoint
  Widget _applyResponsiveUtility(Widget widget, String utility, String breakpoint) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final breakpointValue = TwConstants.breakpoints[breakpoint] ?? 0.0;
        return width >= breakpointValue ? _applyUtility(widget, utility) : widget;
      },
    );
  }
}

/// Extension on TwColors to check if a color exists
extension TwColorsExtension on TwColors {
  /// Check if a color exists in the color palette
  static bool hasColor(String name) {
    return TwColors.getColor(name, 500) != Colors.transparent;
  }
}