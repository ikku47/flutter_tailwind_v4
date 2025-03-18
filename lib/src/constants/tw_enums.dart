import 'package:flutter/material.dart';

/// Enums for various Tailwind CSS properties
enum TwListStyleType {
  none,
  disc,
  decimal,
}

enum TwBorderStyle {
  solid,
  dashed,
  dotted,
  double,
  none,
}

enum TwBlendMode {
  normal,
  multiply,
  screen,
  overlay,
  darken,
  lighten,
  colorDodge,
  colorBurn,
  hardLight,
  softLight,
  difference,
  exclusion,
  hue,
  saturation,
  color,
  luminosity,
}

enum TwBoxFit {
  contain,
  cover,
  fill,
  fitWidth,
  fitHeight,
  none,
  scaleDown,
}

enum TwAlignment {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

enum TwFlexDirection {
  row,
  rowReverse,
  column,
  columnReverse,
}

enum TwFlexWrap {
  wrap,
  nowrap,
  wrapReverse,
}

enum TwPlaceContent {
  center,
  start,
  end,
  spaceBetween,
  spaceAround,
  spaceEvenly,
  stretch,
}

enum TwPlaceItems {
  start,
  center,
  end,
  stretch,
}

enum TwGridTemplateColumns {
  none,
  g1,
  g2,
  g3,
  g4,
  g5,
  g6,
  g7,
  g8,
  g9,
  g10,
  g11,
  g12,
}

enum TwGridColumn {
  auto,
  span1,
  span2,
  span3,
  span4,
  span5,
  span6,
  span7,
  span8,
  span9,
  span10,
  span11,
  span12,
  g1,
  g2,
  g3,
  g4,
  g5,
  g6,
  g7,
  g8,
  g9,
  g10,
  g11,
  g12,
  g13,
}

enum TwPlaceSelf {
  auto,
  start,
  center,
  end,
  stretch,
}

extension TwAlignmentExtension on TwAlignment {
  Alignment get toAlignment {
    switch (this) {
      case TwAlignment.topLeft:
        return Alignment.topLeft;
      case TwAlignment.topCenter:
        return Alignment.topCenter;
      case TwAlignment.topRight:
        return Alignment.topRight;
      case TwAlignment.centerLeft:
        return Alignment.centerLeft;
      case TwAlignment.center:
        return Alignment.center;
      case TwAlignment.centerRight:
        return Alignment.centerRight;
      case TwAlignment.bottomLeft:
        return Alignment.bottomLeft;
      case TwAlignment.bottomCenter:
        return Alignment.bottomCenter;
      case TwAlignment.bottomRight:
        return Alignment.bottomRight;
    }
  }
} 