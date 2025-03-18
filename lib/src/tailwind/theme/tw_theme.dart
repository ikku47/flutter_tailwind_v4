import 'package:flutter/material.dart';
import '../core/screen_utils.dart';

/// Abstract class for Tailwind theme configuration
abstract class TwTheme {
  /// Spacing scale (padding, margin, width, height, etc.)
  static Map<String, double> get spacing => {
    '0': 0,
    'px': TwScreenUtils.w(1),
    '0.5': TwScreenUtils.w(2),
    '1': TwScreenUtils.w(4),
    '1.5': TwScreenUtils.w(6),
    '2': TwScreenUtils.w(8),
    '2.5': TwScreenUtils.w(10),
    '3': TwScreenUtils.w(12),
    '3.5': TwScreenUtils.w(14),
    '4': TwScreenUtils.w(16),
    '5': TwScreenUtils.w(20),
    '6': TwScreenUtils.w(24),
    '7': TwScreenUtils.w(28),
    '8': TwScreenUtils.w(32),
    '9': TwScreenUtils.w(36),
    '10': TwScreenUtils.w(40),
    '11': TwScreenUtils.w(44),
    '12': TwScreenUtils.w(48),
    '14': TwScreenUtils.w(56),
    '16': TwScreenUtils.w(64),
    '20': TwScreenUtils.w(80),
    '24': TwScreenUtils.w(96),
    '28': TwScreenUtils.w(112),
    '32': TwScreenUtils.w(128),
    '36': TwScreenUtils.w(144),
    '40': TwScreenUtils.w(160),
    '44': TwScreenUtils.w(176),
    '48': TwScreenUtils.w(192),
    '52': TwScreenUtils.w(208),
    '56': TwScreenUtils.w(224),
    '60': TwScreenUtils.w(240),
    '64': TwScreenUtils.w(256),
    '72': TwScreenUtils.w(288),
    '80': TwScreenUtils.w(320),
    '96': TwScreenUtils.w(384),
  };

  /// Font sizes
  static Map<String, double> get fontSize => {
    'xs': TwScreenUtils.sp(12),
    'sm': TwScreenUtils.sp(14),
    'base': TwScreenUtils.sp(16),
    'lg': TwScreenUtils.sp(18),
    'xl': TwScreenUtils.sp(20),
    '2xl': TwScreenUtils.sp(24),
    '3xl': TwScreenUtils.sp(30),
    '4xl': TwScreenUtils.sp(36),
    '5xl': TwScreenUtils.sp(48),
    '6xl': TwScreenUtils.sp(60),
    '7xl': TwScreenUtils.sp(72),
    '8xl': TwScreenUtils.sp(96),
    '9xl': TwScreenUtils.sp(128),
  };

  /// Font weights
  static Map<String, FontWeight> get fontWeight => {
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

  /// Border radius
  static Map<String, double> get borderRadius => {
    'none': 0,
    'sm': TwScreenUtils.r(2),
    'DEFAULT': TwScreenUtils.r(4),
    'md': TwScreenUtils.r(6),
    'lg': TwScreenUtils.r(8),
    'xl': TwScreenUtils.r(12),
    '2xl': TwScreenUtils.r(16),
    '3xl': TwScreenUtils.r(24),
    'full': 9999,
  };

  /// Border widths
  static Map<String, double> get borderWidth => {
    'DEFAULT': 1,
    '0': 0,
    '2': 2,
    '4': 4,
    '8': 8,
  };

  /// Opacity values
  static Map<String, double> get opacity => {
    '0': 0,
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
    '100': 1,
  };

  /// Line heights
  static Map<String, double> get lineHeight => {
    'none': 1,
    'tight': 1.25,
    'snug': 1.375,
    'normal': 1.5,
    'relaxed': 1.625,
    'loose': 2,
  };

  /// Letter spacing
  static Map<String, double> get letterSpacing => {
    'tighter': -0.05,
    'tight': -0.025,
    'normal': 0,
    'wide': 0.025,
    'wider': 0.05,
    'widest': 0.1,
  };

  /// Box shadows
  static Map<String, List<BoxShadow>> get boxShadow => {
    'sm': [
      BoxShadow(
        color: Colors.black.withAlpha(13), // 0.05 * 255 ≈ 13
        blurRadius: 1,
        offset: const Offset(0, 1),
      ),
    ],
    'DEFAULT': [
      BoxShadow(
        color: Colors.black.withAlpha(26), // 0.1 * 255 ≈ 26
        blurRadius: 3,
        offset: const Offset(0, 1),
      ),
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 2,
        offset: const Offset(0, 1),
      ),
    ],
    'md': [
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 6,
        offset: const Offset(0, 4),
      ),
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 4,
        offset: const Offset(0, 2),
      ),
    ],
    'lg': [
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 15,
        offset: const Offset(0, 10),
      ),
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 6,
        offset: const Offset(0, 4),
      ),
    ],
    'xl': [
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 25,
        offset: const Offset(0, 20),
      ),
      BoxShadow(
        color: Colors.black.withAlpha(26),
        blurRadius: 10,
        offset: const Offset(0, 8),
      ),
    ],
    '2xl': [
      BoxShadow(
        color: Colors.black.withAlpha(64), // 0.25 * 255 ≈ 64
        blurRadius: 50,
        offset: const Offset(0, 25),
      ),
    ],
    'none': [],
  };

  /// Breakpoints
  static Map<String, double> get breakpoints => {
    'sm': 640,
    'md': 768,
    'lg': 1024,
    'xl': 1280,
    '2xl': 1536,
  };
} 