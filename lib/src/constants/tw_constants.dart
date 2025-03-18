import 'package:flutter/material.dart';

/// Constants for Tailwind CSS implementation
/// 
/// This file contains all the constant values used in the Tailwind CSS implementation
/// such as breakpoints, spacing, and other configuration values.
class TwConstants {
  /// Breakpoint values for responsive design
  /// 
  /// These match Tailwind's default breakpoints with additional 3xl and 4xl for larger screens
  static const Map<String, double> breakpoints = {
    'sm': 640.0,
    'md': 768.0,
    'lg': 1024.0,
    'xl': 1280.0,
    '2xl': 1536.0,
    '3xl': 1920.0,
    '4xl': 2560.0,
  };

  /// Spacing scale values
  /// 
  /// Tailwind's spacing scale is based on a base unit of 4px (0.25rem)
  /// 'px' represents 1px
  static const Map<String, double> spacing = {
    '0': 0.0,
    'px': 1.0,
    '0.5': 2.0,
    '1': 4.0,
    '1.5': 6.0,
    '2': 8.0,
    '2.5': 10.0,
    '3': 12.0,
    '3.5': 14.0,
    '4': 16.0,
    '5': 20.0,
    '6': 24.0,
    '7': 28.0,
    '8': 32.0,
    '9': 36.0,
    '10': 40.0,
    '11': 44.0,
    '12': 48.0,
    '14': 56.0,
    '16': 64.0,
    '20': 80.0,
    '24': 96.0,
    '28': 112.0,
    '32': 128.0,
    '36': 144.0,
    '40': 160.0,
    '44': 176.0,
    '48': 192.0,
    '52': 208.0,
    '56': 224.0,
    '60': 240.0,
    '64': 256.0,
    '72': 288.0,
    '80': 320.0,
    '96': 384.0,
  };

  /// Font size values
  /// 
  /// Tailwind uses 'rem' units for text sizes, based on the root font size (usually 16px)
  static const Map<String, double> fontSize = {
    'xs': 12.0,
    'sm': 14.0,
    'base': 16.0,
    'lg': 18.0,
    'xl': 20.0,
    '2xl': 24.0,
    '3xl': 30.0,
    '4xl': 36.0,
    '5xl': 48.0,
    '6xl': 60.0,
    '7xl': 72.0,
    '8xl': 96.0,
    '9xl': 128.0,
  };

  /// Font weight values
  static const Map<String, FontWeight> fontWeight = {
    'thin': FontWeight.w100,
    'extralight': FontWeight.w200,
    'light': FontWeight.w300,
    'normal': FontWeight.w400,
    'medium': FontWeight.w500,
    'semibold': FontWeight.w600,
    'bold': FontWeight.w700,
    'extrabold': FontWeight.w800,
    'black': FontWeight.w900,
  };

  /// Border radius values
  static const Map<String, double> borderRadius = {
    'none': 0.0,
    'sm': 2.0,
    'DEFAULT': 4.0,
    'md': 6.0,
    'lg': 8.0,
    'xl': 12.0,
    '2xl': 16.0,
    '3xl': 24.0,
    'full': 9999.0,
  };

  /// Border width values
  static const Map<String, double> borderWidth = {
    'DEFAULT': 1.0,
    '0': 0.0,
    '2': 2.0,
    '4': 4.0,
    '8': 8.0,
  };

  /// Opacity values
  static const Map<String, double> opacity = {
    '0': 0.0,
    '5': 0.05,
    '10': 0.1,
    '20': 0.2,
    '25': 0.25,
    '30': 0.3,
    '40': 0.4,
    '50': 0.5,
    '60': 0.6,
    '70': 0.7,
    '75': 0.75,
    '80': 0.8,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
  };

  /// Line height values
  static const Map<String, double> lineHeight = {
    'none': 1.0,
    'tight': 1.25,
    'snug': 1.375,
    'normal': 1.5,
    'relaxed': 1.625,
    'loose': 2.0,
    '3': 12.0,
    '4': 16.0,
    '5': 20.0,
    '6': 24.0,
    '7': 28.0,
    '8': 32.0,
    '9': 36.0,
    '10': 40.0,
  };

  /// Letter spacing values
  static const Map<String, double> letterSpacing = {
    'tighter': -0.05,
    'tight': -0.025,
    'normal': 0.0,
    'wide': 0.025,
    'wider': 0.05,
    'widest': 0.1,
  };

  /// Z-index values
  static const Map<String, int> zIndex = {
    '0': 0,
    '10': 10,
    '20': 20,
    '30': 30,
    '40': 40,
    '50': 50,
    'auto': 999,
  };

  /// Transition duration values (in milliseconds)
  static const Map<String, int> duration = {
    '75': 75,
    '100': 100,
    '150': 150,
    '200': 200,
    '300': 300,
    '500': 500,
    '700': 700,
    '1000': 1000,
  };

  /// Transition timing function values
  static const Map<String, Curve> easing = {
    'linear': Curves.linear,
    'in': Curves.easeIn,
    'out': Curves.easeOut,
    'in-out': Curves.easeInOut,
  };

  /// Object fit values
  static const Map<String, BoxFit> objectFit = {
    'contain': BoxFit.contain,
    'cover': BoxFit.cover,
    'fill': BoxFit.fill,
    'none': BoxFit.none,
    'scale-down': BoxFit.scaleDown,
  };

  /// Object position values
  static const Map<String, Alignment> objectPosition = {
    'bottom': Alignment.bottomCenter,
    'center': Alignment.center,
    'left': Alignment.centerLeft,
    'left-bottom': Alignment.bottomLeft,
    'left-top': Alignment.topLeft,
    'right': Alignment.centerRight,
    'right-bottom': Alignment.bottomRight,
    'right-top': Alignment.topRight,
    'top': Alignment.topCenter,
  };

  /// Display values
  static const Map<String, String> display = {
    'block': 'block',
    'inline-block': 'inline-block',
    'inline': 'inline',
    'flex': 'flex',
    'inline-flex': 'inline-flex',
    'table': 'table',
    'grid': 'grid',
    'hidden': 'hidden',
  };

  /// Aspect ratio values
  static const Map<String, double> aspectRatio = {
    'auto': 0.0, // Special value for auto
    'square': 1.0,
    'video': 16.0 / 9.0,
  };
}