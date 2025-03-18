import 'package:flutter/material.dart';

/// Box shadow values based on Tailwind CSS
class TwShadows {
  static const List<BoxShadow> sm = [
    BoxShadow(
      color: Color(0x33000000),
      blurRadius: 2.0,
      offset: Offset(0, 1),
    ),
  ];
  static const List<BoxShadow> DEFAULT = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 4.0,
      offset: Offset(0, 2),
    ),
  ];
  static const List<BoxShadow> md = [
    BoxShadow(
      color: Color(0x1A000000),
      blurRadius: 6.0,
      offset: Offset(0, 3),
    ),
  ];
  static const List<BoxShadow> lg = [
    BoxShadow(
      color: Color(0x2D000000),
      blurRadius: 12.0,
      offset: Offset(0, 4),
    ),
  ];
  static const List<BoxShadow> xl = [
    BoxShadow(
      color: Color(0x33000000),
      blurRadius: 20.0,
      offset: Offset(0, 6),
    ),
  ];
  static const List<BoxShadow> xl2 = [
    BoxShadow(
      color: Color(0x40000000),
      blurRadius: 25.0,
      offset: Offset(0, 10),
    ),
  ];
  static const List<BoxShadow> none = [];
} 