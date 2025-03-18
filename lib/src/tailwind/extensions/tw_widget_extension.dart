import 'package:flutter/material.dart';
import '../theme/tw_colors.dart';
import '../theme/tw_theme.dart';

/// Extension on Widget to provide Tailwind-like utility classes
extension TwWidgetExtension on Widget {
  /// Padding
  Widget p(String size) => Padding(
        padding: EdgeInsets.all(TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget px(String size) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget py(String size) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget pt(String size) => Padding(
        padding: EdgeInsets.only(top: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget pr(String size) => Padding(
        padding: EdgeInsets.only(right: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget pb(String size) => Padding(
        padding: EdgeInsets.only(bottom: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget pl(String size) => Padding(
        padding: EdgeInsets.only(left: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  /// Margin
  Widget m(String size) => Container(
        margin: EdgeInsets.all(TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget mx(String size) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget my(String size) => Container(
        margin: EdgeInsets.symmetric(
          vertical: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget mt(String size) => Container(
        margin: EdgeInsets.only(top: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget mr(String size) => Container(
        margin: EdgeInsets.only(right: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget mb(String size) => Container(
        margin: EdgeInsets.only(bottom: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  Widget ml(String size) => Container(
        margin: EdgeInsets.only(left: TwTheme.spacing[size] ?? 0),
        child: this,
      );

  /// Width and Height
  Widget w(String size) => SizedBox(
        width: TwTheme.spacing[size] ?? 0,
        child: this,
      );

  Widget h(String size) => SizedBox(
        height: TwTheme.spacing[size] ?? 0,
        child: this,
      );

  Widget minW(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget minH(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget maxW(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  Widget maxH(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: TwTheme.spacing[size] ?? 0,
        ),
        child: this,
      );

  /// Colors and Background
  Widget bg(String color, [int shade = 500]) => Builder(
        builder: (context) {
          final isDark = Theme.of(context).brightness == Brightness.dark;
          return Container(
            color: TwColors.getColor(color, shade, isDark: isDark),
            child: this,
          );
        },
      );

  Widget textColor(String color, [int shade = 500]) => Builder(
        builder: (context) {
          final isDark = Theme.of(context).brightness == Brightness.dark;
          return DefaultTextStyle(
            style: DefaultTextStyle.of(context).style.copyWith(
                  color: TwColors.getColor(color, shade, isDark: isDark),
                ),
            child: this,
          );
        },
      );

  /// Typography
  Widget fontSize(String size) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                fontSize: TwTheme.fontSize[size],
              ),
          child: this,
        ),
      );

  Widget fontWeight(String weight) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                fontWeight: TwTheme.fontWeight[weight],
              ),
          child: this,
        ),
      );

  Widget letterSpacing(String spacing) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                letterSpacing: TwTheme.letterSpacing[spacing],
              ),
          child: this,
        ),
      );

  Widget lineHeight(String height) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                height: TwTheme.lineHeight[height],
              ),
          child: this,
        ),
      );

  /// Border Radius
  Widget rounded([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.circular(TwTheme.borderRadius[size] ?? 0),
        child: this,
      );

  Widget roundedT([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TwTheme.borderRadius[size] ?? 0),
          topRight: Radius.circular(TwTheme.borderRadius[size] ?? 0),
        ),
        child: this,
      );

  Widget roundedB([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(TwTheme.borderRadius[size] ?? 0),
          bottomRight: Radius.circular(TwTheme.borderRadius[size] ?? 0),
        ),
        child: this,
      );

  Widget roundedL([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TwTheme.borderRadius[size] ?? 0),
          bottomLeft: Radius.circular(TwTheme.borderRadius[size] ?? 0),
        ),
        child: this,
      );

  Widget roundedR([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(TwTheme.borderRadius[size] ?? 0),
          bottomRight: Radius.circular(TwTheme.borderRadius[size] ?? 0),
        ),
        child: this,
      );

  /// Border
  Widget border([String color = 'gray', int shade = 500, String width = 'DEFAULT']) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: TwColors.getColor(color, shade),
            width: TwTheme.borderWidth[width] ?? 1,
          ),
        ),
        child: this,
      );

  /// Opacity
  Widget opacity(String value) => Opacity(
        opacity: TwTheme.opacity[value] ?? 1,
        child: this,
      );

  /// Shadow
  Widget shadow([String size = 'DEFAULT']) => Container(
        decoration: BoxDecoration(
          boxShadow: TwTheme.boxShadow[size] ?? [],
        ),
        child: this,
      );

  /// Flex and Layout
  Widget flex({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
    TextBaseline? textBaseline,
  }) =>
      Flex(
        direction: direction,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        children: [this],
      );

  Widget row() => flex(direction: Axis.horizontal);
  Widget col() => flex(direction: Axis.vertical);

  Widget justifyStart() => flex(mainAxisAlignment: MainAxisAlignment.start);
  Widget justifyCenter() => flex(mainAxisAlignment: MainAxisAlignment.center);
  Widget justifyEnd() => flex(mainAxisAlignment: MainAxisAlignment.end);
  Widget justifyBetween() => flex(mainAxisAlignment: MainAxisAlignment.spaceBetween);
  Widget justifyAround() => flex(mainAxisAlignment: MainAxisAlignment.spaceAround);
  Widget justifyEvenly() => flex(mainAxisAlignment: MainAxisAlignment.spaceEvenly);

  Widget itemsStart() => flex(crossAxisAlignment: CrossAxisAlignment.start);
  Widget itemsCenter() => flex(crossAxisAlignment: CrossAxisAlignment.center);
  Widget itemsEnd() => flex(crossAxisAlignment: CrossAxisAlignment.end);
  Widget itemsStretch() => flex(crossAxisAlignment: CrossAxisAlignment.stretch);
  Widget itemsBaseline() => flex(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
      );

  /// Position
  Widget relative() => Positioned.fill(child: this);
  Widget absolute() => Positioned.fill(child: this);
  Widget fixed() => Positioned.fill(child: this);
  Widget sticky() => Positioned.fill(child: this);
  Widget static() => this;

  /// Display
  Widget hidden() => const SizedBox.shrink();
  Widget block() => SizedBox(width: double.infinity, child: this);
  Widget inlineBlock() => IntrinsicWidth(child: this);
  Widget inline() => IntrinsicWidth(child: this);

  /// Overflow
  Widget overflowVisible() => ClipRect(clipBehavior: Clip.none, child: this);
  Widget overflowHidden() => ClipRect(child: this);
  Widget overflowScroll() => SingleChildScrollView(child: this);
  Widget overflowAuto() => SingleChildScrollView(child: this);

  /// Z-Index
  Widget z(int index) => Transform(
        transform: Matrix4.translationValues(0, 0, index.toDouble()),
        child: this,
      );

  /// Cursor
  Widget cursorPointer() => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: this,
      );

  /// User Select
  Widget userSelectNone() => IgnorePointer(
        ignoring: true,
        child: this,
      );

  Widget userSelectText() => MouseRegion(
        cursor: SystemMouseCursors.text,
        child: this,
      );

  /// Responsive Design Helpers
  Widget responsive({
    String? sm,
    String? md,
    String? lg,
    String? xl,
    String? xl2,
  }) => LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          if (width >= TwTheme.breakpoints['2xl']! && xl2 != null) {
            return SizedBox(width: double.parse(xl2), child: this);
          } else if (width >= TwTheme.breakpoints['xl']! && xl != null) {
            return SizedBox(width: double.parse(xl), child: this);
          } else if (width >= TwTheme.breakpoints['lg']! && lg != null) {
            return SizedBox(width: double.parse(lg), child: this);
          } else if (width >= TwTheme.breakpoints['md']! && md != null) {
            return SizedBox(width: double.parse(md), child: this);
          } else if (width >= TwTheme.breakpoints['sm']! && sm != null) {
            return SizedBox(width: double.parse(sm), child: this);
          }
          return this;
        },
      );
} 