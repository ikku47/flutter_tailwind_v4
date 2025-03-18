library;

export 'tailwind/core/screen_utils.dart';
export 'tailwind/theme/tw_colors.dart';
export 'tailwind/theme/tw_theme.dart';
export 'tailwind/extensions/tw_widget_extension.dart';

import 'package:flutter/material.dart';
import 'config.dart';

// Helper to detect theme mode
String _getThemeMode(BuildContext context) {
  final brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.dark ? 'dark' : 'light';
}

extension TwUtils on Widget {
  // Padding with responsiveness
  Widget p(String size, {String? breakpoint}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final effectiveSize = _getEffectiveSize(size, width, breakpoint);
        return Padding(
          padding: EdgeInsets.all(TwConfig.spacing[effectiveSize] ?? 0),
          child: this,
        );
      },
    );
  }

  // Margin
  Widget m(String size, {String? breakpoint}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final effectiveSize = _getEffectiveSize(size, width, breakpoint);
        return Padding(
          padding: EdgeInsets.all(TwConfig.spacing[effectiveSize] ?? 0),
          child: this,
        );
      },
    );
  }

  // Background color with theme support
  Widget bg(String color, [int shade = 500]) {
    return Builder(
      builder: (context) {
        final theme = _getThemeMode(context);
        final colorMap = TwConfig.colors[theme]?[color];
        return Container(
          color: colorMap?[shade] ?? Colors.transparent,
          child: this,
        );
      },
    );
  }

  // Text color with theme support
  Widget textColor(String color, [int shade = 500]) {
    return Builder(
      builder: (context) {
        final theme = _getThemeMode(context);
        final colorMap = TwConfig.colors[theme]?[color];
        return DefaultTextStyle(
          style: TextStyle(color: colorMap?[shade] ?? Colors.black),
          child: this,
        );
      },
    );
  }

  // Text size
  Widget text(String size) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: TwConfig.textSizes[size] ?? 16.0),
      child: this,
    );
  }

  // Font weight
  Widget fontWeight(String weight) {
    return DefaultTextStyle(
      style: TextStyle(fontWeight: TwConfig.fontWeights[weight] ?? FontWeight.normal),
      child: this,
    );
  }

  // Font family
  Widget fontFamily(String family) {
    return DefaultTextStyle(
      style: TextStyle(fontFamily: TwConfig.fontFamilies[family] ?? 'Roboto'),
      child: this,
    );
  }

  // Letter Spacing
  Widget letterSpacing(String spacing) {
    return DefaultTextStyle(
      style: TextStyle(letterSpacing: TwConfig.letterSpacing[spacing] ?? 0.0),
      child: this,
    );
  }

  // Helper for responsive sizing
  String _getEffectiveSize(String size, double width, String? breakpoint) {
    if (breakpoint == null) return size;
    final bpWidth = TwConfig.breakpoints[breakpoint];
    return (bpWidth != null && width >= bpWidth) ? size : '0';
  }

  // Flex
  Widget flex({String direction = 'row'}) {
    return Flex(
      direction: direction == 'row' ? Axis.horizontal : Axis.vertical,
      children: this is Flex ? (this as Flex).children : [this],
    );
  }

  // Justify Content
  Widget justifyContent(String alignment) {
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
    switch (alignment) {
      case 'start':
        mainAxisAlignment = MainAxisAlignment.start;
        break;
      case 'center':
        mainAxisAlignment = MainAxisAlignment.center;
        break;
      case 'end':
        mainAxisAlignment = MainAxisAlignment.end;
        break;
      case 'spaceBetween':
        mainAxisAlignment = MainAxisAlignment.spaceBetween;
        break;
      case 'spaceAround':
        mainAxisAlignment = MainAxisAlignment.spaceAround;
        break;
      case 'spaceEvenly':
        mainAxisAlignment = MainAxisAlignment.spaceEvenly;
        break;
    }

    return Flex(
      direction: this is Flex ? (this as Flex).direction : Axis.horizontal,
      mainAxisAlignment: mainAxisAlignment,
      children: this is Flex ? (this as Flex).children : [this],
    );
  }

  // Align Items (crossAxisAlignment)
  Widget alignItems(String alignment) {
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
    switch (alignment) {
      case 'start':
        crossAxisAlignment = CrossAxisAlignment.start;
        break;
      case 'center':
        crossAxisAlignment = CrossAxisAlignment.center;
        break;
      case 'end':
        crossAxisAlignment = CrossAxisAlignment.end;
        break;
      case 'stretch':
        crossAxisAlignment = CrossAxisAlignment.stretch;
        break;
      case 'baseline':
        crossAxisAlignment = CrossAxisAlignment.baseline;
        break;
    }

    return Flex(
      direction: this is Flex ? (this as Flex).direction : Axis.horizontal,
      crossAxisAlignment: crossAxisAlignment,
      children: this is Flex ? (this as Flex).children : [this],
    );
  }

  // Width and Height
  Widget w(String size, {String? breakpoint}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final effectiveSize = _getEffectiveSize(size, width, breakpoint);
        final value = TwConfig.spacing[effectiveSize] ?? double.tryParse(size) ?? 0;
        return SizedBox(width: value, child: this);
      },
    );
  }

  Widget h(String size, {String? breakpoint}) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final effectiveSize = _getEffectiveSize(size, width, breakpoint);
        final value = TwConfig.spacing[effectiveSize] ?? double.tryParse(size) ?? 0;
        return SizedBox(height: value, child: this);
      },
    );
  }

  Widget rounded(String size) {
    final value = TwConfig.borderRadius[size] ?? double.tryParse(size) ?? 0;
    return ClipRRect(
      borderRadius: BorderRadius.circular(value),
      child: this,
    );
  }

  // Border
  Widget border({String color = 'slate', int shade = 500, String width = 'DEFAULT', String style = 'solid'}) {
    return Builder(
      builder: (context) {
        final theme = _getThemeMode(context);
        final colorMap = TwConfig.colors[theme]?[color];
        final borderWidth = TwConfig.borderWidths[width] ?? 1.0;
        final borderStyle = TwConfig.divideStyle[style] ?? BorderStyle.solid;
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: colorMap?[shade] ?? Colors.grey, width: borderWidth, style: borderStyle),
          ),
          child: this,
        );
      },
    );
  }

  // Opacity
  Widget opacity(String value) {
    final opacityValue = TwConfig.opacity[value] ?? 1.0;
    return Opacity(
      opacity: opacityValue,
      child: this,
    );
  }

  // Box Shadow
  Widget shadow(String size) {
    final shadowList = TwConfig.shadows[size] ?? [];
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: shadowList,
      ),
      child: this,
    );
  }

  // Transition Duration
  Widget transitionDuration(String duration) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: TwConfig.durations[duration] ?? 200),
      builder: (BuildContext context, double value, Widget? child) {
        return child!;
      },
      child: this,
    );
  }

  // Transition Easing
  Widget transitionEasing(String easing) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: TwConfig.durations['200'] ?? 200), // Default duration
      switchInCurve: TwConfig.easing[easing] ?? Curves.linear,
      switchOutCurve: TwConfig.easing[easing] ?? Curves.linear,
      child: this,
    );
  }

  // Z-Index (Stacking Order)
  Widget zIndex(String index) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(width: double.infinity, height: double.infinity, child: this),
        ),
      ],
    );
  }

  // Object Fit
  Widget objectFit(String fit) {
    return FittedBox(
      fit: TwConfig.objectFit[fit] ?? BoxFit.contain,
      child: this,
    );
  }

  // Object Position
  Widget objectPosition(String position) {
    return Align(
      alignment: TwConfig.objectPosition[position] ?? Alignment.center,
      child: this,
    );
  }

  // Aspect Ratio
  Widget aspectRatio(String ratio) {
    final aspectRatioValue = TwConfig.aspectRatio[ratio] ?? 1.0;
    return AspectRatio(
      aspectRatio: aspectRatioValue,
      child: this,
    );
  }

  // List Style Type
  Widget listStyleType(String type) {
    // This is a placeholder, as Flutter doesn't have a direct equivalent to list-style-type.
    // You'd likely need to create a custom list widget with custom bullet/number rendering.
    return this; // Return the original widget for now.
  }

  // Display (Visibility)
  Widget display(String displayType) {
    if (TwConfig.display[displayType] == 'hidden') {
      return const SizedBox.shrink(); //Replaces widget with an empty widget
    }
    return this;
  }

  // Overflow
  Widget overflow(String overflowType) {
    // This is a simplified implementation, consider using Scrollable widgets for more control.
    if (overflowType == 'hidden') {
      return ClipRect(child: this);
    }
    return this;
  }
}

extension TwWidget on Widget {
  Widget tw(String classNames) {
    final classes = classNames.split(' ');
    Widget current = this;
    for (final cls in classes) {
      final parts = cls.split(':');
      if (parts.length == 1) {
        current = _applyUtility(current, parts[0]);
      } else if (parts.length == 2) {
        final variant = parts[0];
        final utility = parts[1];
        if (variant == 'dark') {
          current = _applyDarkModeUtility(current, utility);
        } else if (TwConfig.breakpoints.containsKey(variant)) {
          current = _applyResponsiveUtility(current, utility, variant);
        }
      }
    }
    return current;
  }

  Widget _applyUtility(Widget widget, String utility) {
    final parts = utility.split('-');
    if (parts.isEmpty) return widget;
    switch (parts[0]) {
      case 'p':
        return parts.length > 1 ? widget.p(parts[1]) : widget;
      case 'm':
        return parts.length > 1 ? widget.m(parts[1]) : widget;
      case 'bg':
        if (parts.length < 2) return widget;
        final shade = parts.length > 2 ? int.tryParse(parts[2]) ?? 500 : 500;
        return widget.bg(parts[1], shade);
      case 'textColor':
        if (parts.length < 2) return widget;
        final shade = parts.length > 2 ? int.tryParse(parts[2]) ?? 500 : 500;
        return widget.textColor(parts[1], shade);
      case 'text':
        return parts.length > 1 ? widget.text(parts[1]) : widget;
      case 'font':
        if (parts.length > 1) {
          if (parts[1] == 'bold') return widget.fontWeight('bold');
          if (TwConfig.fontWeights.containsKey(parts[1])) {
            return widget.fontWeight(parts[1]);
          }
          if (parts[1] == 'sans' || parts[1] == 'serif' || parts[1] == 'mono') {
            return widget.fontFamily(parts[1]);
          }
        }
        break;
      case 'tracking':
        return parts.length > 1 ? widget.letterSpacing(parts[1]) : widget;
      case 'flex':
        return widget.flex(direction: parts.length > 1 ? parts[1] : 'row');
      case 'justify':
        if (parts.length > 1) return widget.justifyContent(parts[1]);
        break;
      case 'items':
        if (parts.length > 1) return widget.alignItems(parts[1]);
        break;
      case 'w':
        return parts.length > 1 ? widget.w(parts[1]) : widget;
      case 'h':
        return parts.length > 1 ? widget.h(parts[1]) : widget;
      case 'rounded':
        return parts.length > 1 ? widget.rounded(parts[1]) : widget;
      case 'border':
        String color = 'slate';
        int shade = 500;
        String width = 'DEFAULT';
        String style = 'solid';

        // Extract color, shade, width, and style from the parts
        for (int i = 1; i < parts.length; i++) {
          if (TwConfig.colors['light']!.containsKey(parts[i])) {
            color = parts[i];
          } else if (parts[i].contains(RegExp(r'^\d+$'))) {
            // Check if it's a shade (number)
            shade = int.tryParse(parts[i]) ?? 500;
          } else if (TwConfig.borderWidths.containsKey(parts[i])) {
            width = parts[i];
          } else if (TwConfig.divideStyle.containsKey(parts[i])) {
            style = parts[i];
          }
        }

        return widget.border(color: color, shade: shade, width: width, style: style);
      case 'opacity':
        return parts.length > 1 ? widget.opacity(parts[1]) : widget;
      case 'shadow':
        return parts.length > 1 ? widget.shadow(parts[1]) : widget;
      case 'transition':
        if (parts.length > 2 && parts[1] == 'duration') {
          return widget.transitionDuration(parts[2]);
        }
        if (parts.length > 2 && parts[1] == 'easing') {
          return widget.transitionEasing(parts[2]);
        }
        break;
      case 'z':
        return parts.length > 1 ? widget.zIndex(parts[1]) : widget;
      case 'object':
        if (parts.length > 1 && parts[1] == 'fit') {
          return parts.length > 2 ? widget.objectFit(parts[2]) : widget;
        }
        if (parts.length > 1 && parts[1] == 'position') {
          return parts.length > 2 ? widget.objectPosition(parts[2]) : widget;
        }
        break;
      case 'aspect':
        if (parts.length > 2 && parts[1] == 'ratio') {
          return widget.aspectRatio(parts[2]);
        }
        break;
      case 'list':
        if (parts.length > 2 && parts[1] == 'style') {
          return widget.listStyleType(parts[2]);
        }
        break;
      case 'display':
        if (parts.length > 1) {
          return widget.display(parts[1]);
        }
        break;
      case 'overflow':
        if (parts.length > 1) {
          return widget.overflow(parts[1]);
        }
        break;
      default:
        return widget;
    }
    return widget;
  }

  Widget _applyDarkModeUtility(Widget widget, String utility) {
    return Builder(
      builder: (context) {
        final theme = _getThemeMode(context);
        return theme == 'dark' ? _applyUtility(widget, utility) : widget;
      },
    );
  }

  Widget _applyResponsiveUtility(Widget widget, String utility, String breakpoint) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final bpWidth = TwConfig.breakpoints[breakpoint];
        return (bpWidth != null && width >= bpWidth)
            ? _applyUtility(widget, utility)
            : widget;
      },
    );
  }
}