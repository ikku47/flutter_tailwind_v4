import 'package:flutter/material.dart';

/// Transition easing functions based on Tailwind CSS
class TwEasing {
  static const Curve linear = Curves.linear;
  static const Curve in_ = Curves.easeIn;
  static const Curve out_ = Curves.easeOut;
  static const Curve inOut = Curves.easeInOut;
  static const Curve ease = Curves.ease; // Standard ease
  static const Curve bounce = Curves.bounceIn; // Example of a more complex curve
} 