import 'package:flutter/material.dart';
import '../constants/tw_constants.dart';
import '../utils/screen_utils.dart';

/// Theme configuration for Tailwind CSS implementation
/// 
/// This class provides responsive theme configuration by utilizing screen utilities
/// to adapt values based on screen size.
class TwThemeConfig {
  /// Initialize the theme configuration
  /// 
  /// This should be called before using any theme values
  static void initialize(BuildContext context, {Size designSize = const Size(375, 812)}) {
    TwScreenUtils.initialize(context, designSize.width, designSize.height);
  }
  
  /// Get responsive spacing value
  static double getSpacing(String key) {
    final value = TwConstants.spacing[key] ?? 0.0;
    return TwScreenUtils.w(value);
  }
  
  /// Get responsive font size value
  static double getFontSize(String key) {
    final value = TwConstants.fontSize[key] ?? 16.0;
    return TwScreenUtils.sp(value);
  }
  
  /// Get font weight value
  static FontWeight getFontWeight(String key) {
    return TwConstants.fontWeight[key] ?? FontWeight.normal;
  }
  
  /// Get responsive border radius value
  static double getBorderRadius(String key) {
    final value = TwConstants.borderRadius[key] ?? 0.0;
    return TwScreenUtils.r(value);
  }
  
  /// Get border width value
  static double getBorderWidth(String key) {
    return TwConstants.borderWidth[key] ?? 1.0;
  }
  
  /// Get opacity value
  static double getOpacity(String key) {
    return TwConstants.opacity[key] ?? 1.0;
  }
  
  /// Get line height value
  static double getLineHeight(String key) {
    return TwConstants.lineHeight[key] ?? 1.0;
  }
  
  /// Get letter spacing value
  static double getLetterSpacing(String key) {
    return TwConstants.letterSpacing[key] ?? 0.0;
  }
  
  /// Get z-index value
  static int getZIndex(String key) {
    return TwConstants.zIndex[key] ?? 0;
  }
  
  /// Get transition duration value
  static int getDuration(String key) {
    return TwConstants.duration[key] ?? 200;
  }
  
  /// Get transition timing function value
  static Curve getEasing(String key) {
    return TwConstants.easing[key] ?? Curves.linear;
  }
  
  /// Get object fit value
  static BoxFit getObjectFit(String key) {
    return TwConstants.objectFit[key] ?? BoxFit.contain;
  }
  
  /// Get object position value
  static Alignment getObjectPosition(String key) {
    return TwConstants.objectPosition[key] ?? Alignment.center;
  }
  
  /// Get display value
  static String getDisplay(String key) {
    return TwConstants.display[key] ?? 'block';
  }
  
  /// Get aspect ratio value
  static double getAspectRatio(String key) {
    return TwConstants.aspectRatio[key] ?? 1.0;
  }
  
  /// Check if the current screen width is greater than or equal to the specified breakpoint
  static bool isBreakpoint(String breakpoint) {
    final breakpointValue = TwConstants.breakpoints[breakpoint] ?? 0.0;
    return TwScreenUtils.screenWidth >= breakpointValue;
  }
  
  /// Get the current theme mode
  static String getThemeMode(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return brightness == Brightness.dark ? 'dark' : 'light';
  }
}