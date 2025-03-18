/// Main entry point for the Flutter Tailwind v4 package
/// 
/// This file exports all the necessary components for using the package

// Core utilities and configurations
export 'core/index.dart';

// Theme configuration
export 'theme/tw_colors.dart';
export 'theme/tw_theme_config.dart';

// Constants
export 'constants/tw_constants.dart';

// Extensions
export 'extensions/tw_widget_extension.dart';
export 'extensions/tw_parser.dart';

// Initialize the Tailwind configuration
import 'package:flutter/material.dart';
import 'theme/tw_theme_config.dart';

/// Initialize the Tailwind configuration
/// 
/// This should be called before using any Tailwind utilities,
/// typically in the main() function or in the root widget.
void initializeTailwind(BuildContext context, {Size designSize = const Size(375, 812)}) {
  TwThemeConfig.initialize(context, designSize: designSize);
}