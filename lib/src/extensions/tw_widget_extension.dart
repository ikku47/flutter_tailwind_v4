import 'package:flutter/material.dart';
import '../theme/tw_colors.dart';
import '../theme/tw_theme_config.dart';
import '../constants/tw_constants.dart';

/// Extension on Widget to provide Tailwind-like utility classes
extension TwWidgetExtension on Widget {
  /// Padding
  Widget p(String size) => Padding(
        padding: EdgeInsets.all(TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget px(String size) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget py(String size) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget pt(String size) => Padding(
        padding: EdgeInsets.only(top: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget pr(String size) => Padding(
        padding: EdgeInsets.only(right: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget pb(String size) => Padding(
        padding: EdgeInsets.only(bottom: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget pl(String size) => Padding(
        padding: EdgeInsets.only(left: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  /// Margin
  Widget m(String size) => Container(
        margin: EdgeInsets.all(TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget mx(String size) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget my(String size) => Container(
        margin: EdgeInsets.symmetric(
          vertical: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget mt(String size) => Container(
        margin: EdgeInsets.only(top: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget mr(String size) => Container(
        margin: EdgeInsets.only(right: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget mb(String size) => Container(
        margin: EdgeInsets.only(bottom: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  Widget ml(String size) => Container(
        margin: EdgeInsets.only(left: TwThemeConfig.getSpacing(size)),
        child: this,
      );

  /// Width and Height
  Widget w(String size) => SizedBox(
        width: TwThemeConfig.getSpacing(size),
        child: this,
      );

  Widget h(String size) => SizedBox(
        height: TwThemeConfig.getSpacing(size),
        child: this,
      );

  Widget minW(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget minH(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget maxW(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: TwThemeConfig.getSpacing(size),
        ),
        child: this,
      );

  Widget maxH(String size) => ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: TwThemeConfig.getSpacing(size),
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
                fontSize: TwThemeConfig.getFontSize(size),
              ),
          child: this,
        ),
      );

  Widget fontWeight(String weight) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                fontWeight: TwThemeConfig.getFontWeight(weight),
              ),
          child: this,
        ),
      );

  Widget letterSpacing(String spacing) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                letterSpacing: TwThemeConfig.getLetterSpacing(spacing),
              ),
          child: this,
        ),
      );

  Widget lineHeight(String height) => Builder(
        builder: (context) => DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                height: TwThemeConfig.getLineHeight(height),
              ),
          child: this,
        ),
      );

  /// Border Radius
  Widget rounded([String size = 'DEFAULT']) => ClipRRect(
        borderRadius: BorderRadius.circular(TwThemeConfig.getBorderRadius(size)),
        child: this,
      );

  /// Border
  Widget border([String color = 'gray', int shade = 500, String width = 'DEFAULT']) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: TwColors.getColor(color, shade),
            width: TwThemeConfig.getBorderWidth(width),
          ),
        ),
        child: this,
      );

  /// Opacity
  Widget opacity(String value) => Opacity(
        opacity: TwThemeConfig.getOpacity(value),
        child: this,
      );

  /// Flex and Layout
  Widget flex({
    Axis direction = Axis.horizontal,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
  }) =>
      Flex(
        direction: direction,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
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
          const breakpoints = TwConstants.breakpoints;
          if (width >= breakpoints['2xl']! && xl2 != null) {
            return SizedBox(width: double.parse(xl2), child: this);
          } else if (width >= breakpoints['xl']! && xl != null) {
            return SizedBox(width: double.parse(xl), child: this);
          } else if (width >= breakpoints['lg']! && lg != null) {
            return SizedBox(width: double.parse(lg), child: this);
          } else if (width >= breakpoints['md']! && md != null) {
            return SizedBox(width: double.parse(md), child: this);
          } else if (width >= breakpoints['sm']! && sm != null) {
            return SizedBox(width: double.parse(sm), child: this);
          }
          return this;
        },
      );
}