import 'package:flutter/material.dart';

/// Utility class for handling screen-related calculations
class TwScreenUtils {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _designWidth;
  static late double _designHeight;
  static late double _scaleFactor;

  /// Initialize screen utilities with the given context and design dimensions
  static void initialize(BuildContext context, double designWidth, double designHeight) {
    final mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _designWidth = designWidth;
    _designHeight = designHeight;
    _scaleFactor = mediaQuery.textScaleFactor;
  }

  /// Get the current screen width
  static double get screenWidth => _screenWidth;

  /// Get the current screen height
  static double get screenHeight => _screenHeight;

  /// Calculate width-based responsive value
  static double w(double width) {
    return width * _screenWidth / _designWidth;
  }

  /// Calculate height-based responsive value
  static double h(double height) {
    return height * _screenHeight / _designHeight;
  }

  /// Calculate radius-based responsive value
  static double r(double radius) {
    return radius * _screenWidth / _designWidth;
  }

  /// Calculate text-based responsive value with scale factor
  static double sp(double fontSize) {
    return fontSize * _screenWidth / _designWidth * _scaleFactor;
  }
}