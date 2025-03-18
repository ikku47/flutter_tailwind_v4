import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Screen utilities for responsive design
/// 
/// This class provides utilities for responsive sizing based on screen dimensions
/// using the flutter_screenutil package.
class TwScreenUtils {
  /// Initialize screen utilities with design size
  /// 
  /// This should be called before using any screen utilities
  static void initialize(BuildContext context, double width, double height) {
    ScreenUtil.init(
      context,
      designSize: Size(width, height),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }

  /// Convert value to responsive width
  static double w(num width) => width.w;

  /// Convert value to responsive height
  static double h(num height) => height.h;

  /// Convert value to responsive font size
  static double sp(num fontSize) => fontSize.sp;

  /// Convert value to responsive radius
  static double r(num radius) => radius.r;

  /// Get screen width
  static double get screenWidth => 1.sw;

  /// Get screen height
  static double get screenHeight => 1.sh;

  /// Get status bar height
  static double get statusBarHeight => ScreenUtil().statusBarHeight;

  /// Get bottom bar height
  static double get bottomBarHeight => ScreenUtil().bottomBarHeight;

  /// Scale factor for width
  static double get scaleWidth => ScreenUtil().scaleWidth;

  /// Scale factor for height
  static double get scaleHeight => ScreenUtil().scaleHeight;

  /// Scale factor for font size
  static double get scaleText => ScreenUtil().scaleText;

  /// Check if the device is a tablet
  static bool get isTablet => screenWidth >= 600;

  /// Check if the device is a phone
  static bool get isPhone => screenWidth < 600;
}