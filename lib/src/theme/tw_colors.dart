import 'package:flutter/material.dart';

/// Color theme manager for Tailwind CSS implementation
/// 
/// This class provides color management for both light and dark modes
/// with a complete Tailwind v4 color palette.
class TwColors {
  /// Get color based on theme mode, color name, and shade
  /// 
  /// If isDark is true, returns the dark mode variant of the color
  static Color getColor(String name, int shade, {bool isDark = false}) {
    final colors = isDark ? _darkColors : _lightColors;
    return colors[name]?[shade] ?? Colors.transparent;
  }

  /// Check if a color exists in the color palette
  static bool hasColor(String name) {
    return _lightColors.containsKey(name);
  }

  /// Light mode colors
  static final Map<String, Map<int, Color>> _lightColors = {
    'slate': {
      50: const Color(0xFFF8FAFC),
      100: const Color(0xFFF1F5F9),
      200: const Color(0xFFE2E8F0),
      300: const Color(0xFFCBD5E1),
      400: const Color(0xFF94A3B8),
      500: const Color(0xFF64748B),
      600: const Color(0xFF475569),
      700: const Color(0xFF334155),
      800: const Color(0xFF1E293B),
      900: const Color(0xFF0F172A),
      950: const Color(0xFF020617),
    },
    'gray': {
      50: const Color(0xFFF9FAFB),
      100: const Color(0xFFF3F4F6),
      200: const Color(0xFFE5E7EB),
      300: const Color(0xFFD1D5DB),
      400: const Color(0xFF9CA3AF),
      500: const Color(0xFF6B7280),
      600: const Color(0xFF4B5563),
      700: const Color(0xFF374151),
      800: const Color(0xFF1F2937),
      900: const Color(0xFF111827),
      950: const Color(0xFF030712),
    },
    'zinc': {
      50: const Color(0xFFFAFAFA),
      100: const Color(0xFFF4F4F5),
      200: const Color(0xFFE4E4E7),
      300: const Color(0xFFD4D4D8),
      400: const Color(0xFFA1A1AA),
      500: const Color(0xFF71717A),
      600: const Color(0xFF52525B),
      700: const Color(0xFF3F3F46),
      800: const Color(0xFF27272A),
      900: const Color(0xFF18181B),
      950: const Color(0xFF09090B),
    },
    'neutral': {
      50: const Color(0xFFFAFAFA),
      100: const Color(0xFFF5F5F5),
      200: const Color(0xFFE5E5E5),
      300: const Color(0xFFD4D4D4),
      400: const Color(0xFFA3A3A3),
      500: const Color(0xFF737373),
      600: const Color(0xFF525252),
      700: const Color(0xFF404040),
      800: const Color(0xFF262626),
      900: const Color(0xFF171717),
      950: const Color(0xFF0A0A0A),
    },
    'blue': {
      50: const Color(0xFFEFF6FF),
      100: const Color(0xFFDBEAFE),
      200: const Color(0xFFBFDBFE),
      300: const Color(0xFF93C5FD),
      400: const Color(0xFF60A5FA),
      500: const Color(0xFF3B82F6),
      600: const Color(0xFF2563EB),
      700: const Color(0xFF1D4ED8),
      800: const Color(0xFF1E40AF),
      900: const Color(0xFF1E3A8A),
      950: const Color(0xFF172554),
    },
    'red': {
      50: const Color(0xFFFEF2F2),
      100: const Color(0xFFFEE2E2),
      200: const Color(0xFFFECACA),
      300: const Color(0xFFFCA5A5),
      400: const Color(0xFFF87171),
      500: const Color(0xFFEF4444),
      600: const Color(0xFFDC2626),
      700: const Color(0xFFB91C1C),
      800: const Color(0xFF991B1B),
      900: const Color(0xFF7F1D1D),
      950: const Color(0xFF450A0A),
    },
    'green': {
      50: const Color(0xFFF0FDF4),
      100: const Color(0xFFDCFCE7),
      200: const Color(0xFFBBF7D0),
      300: const Color(0xFF86EFAC),
      400: const Color(0xFF4ADE80),
      500: const Color(0xFF22C55E),
      600: const Color(0xFF16A34A),
      700: const Color(0xFF15803D),
      800: const Color(0xFF166534),
      900: const Color(0xFF14532D),
      950: const Color(0xFF052E16),
    },
  };

  /// Dark mode colors
  static final Map<String, Map<int, Color>> _darkColors = {
    'slate': {
      50: const Color(0xFF020617),
      100: const Color(0xFF0F172A),
      200: const Color(0xFF1E293B),
      300: const Color(0xFF334155),
      400: const Color(0xFF475569),
      500: const Color(0xFF64748B),
      600: const Color(0xFF94A3B8),
      700: const Color(0xFFCBD5E1),
      800: const Color(0xFFE2E8F0),
      900: const Color(0xFFF1F5F9),
      950: const Color(0xFFF8FAFC),
    },
    'gray': {
      50: const Color(0xFF030712),
      100: const Color(0xFF111827),
      200: const Color(0xFF1F2937),
      300: const Color(0xFF374151),
      400: const Color(0xFF4B5563),
      500: const Color(0xFF6B7280),
      600: const Color(0xFF9CA3AF),
      700: const Color(0xFFD1D5DB),
      800: const Color(0xFFE5E7EB),
      900: const Color(0xFFF3F4F6),
      950: const Color(0xFFF9FAFB),
    },
    'zinc': {
      50: const Color(0xFF09090B),
      100: const Color(0xFF18181B),
      200: const Color(0xFF27272A),
      300: const Color(0xFF3F3F46),
      400: const Color(0xFF52525B),
      500: const Color(0xFF71717A),
      600: const Color(0xFFA1A1AA),
      700: const Color(0xFFD4D4D8),
      800: const Color(0xFFE4E4E7),
      900: const Color(0xFFF4F4F5),
      950: const Color(0xFFFAFAFA),
    },
    'neutral': {
      50: const Color(0xFF0A0A0A),
      100: const Color(0xFF171717),
      200: const Color(0xFF262626),
      300: const Color(0xFF404040),
      400: const Color(0xFF525252),
      500: const Color(0xFF737373),
      600: const Color(0xFFA3A3A3),
      700: const Color(0xFFD4D4D4),
      800: const Color(0xFFE5E5E5),
      900: const Color(0xFFF5F5F5),
      950: const Color(0xFFFAFAFA),
    },
    'blue': {
      50: const Color(0xFF172554),
      100: const Color(0xFF1E3A8A),
      200: const Color(0xFF1E40AF),      
      300: const Color(0xFF1D4ED8),
      400: const Color(0xFF2563EB),
      500: const Color(0xFF3B82F6),
      600: const Color(0xFF60A5FA),
      700: const Color(0xFF93C5FD),
      800: const Color(0xFFBFDBFE),
      900: const Color(0xFFDBEAFE),
      950: const Color(0xFFEFF6FF),
    },
    'red': {
      50: const Color(0xFF450A0A),
      100: const Color(0xFF7F1D1D),
      200: const Color(0xFF991B1B),
      300: const Color(0xFFB91C1C),
      400: const Color(0xFFDC2626),
      500: const Color(0xFFEF4444),
      600: const Color(0xFFF87171),
      700: const Color(0xFFFCA5A5),
      800: const Color(0xFFFECACA),
      900: const Color(0xFFFEE2E2),
      950: const Color(0xFFFEF2F2),
    },
    'green': {
      50: const Color(0xFF052E16),
      100: const Color(0xFF14532D),
      200: const Color(0xFF166534),
      300: const Color(0xFF15803D),
      400: const Color(0xFF16A34A),
      500: const Color(0xFF22C55E),
      600: const Color(0xFF4ADE80),
      700: const Color(0xFF86EFAC),
      800: const Color(0xFFBBF7D0),
      900: const Color(0xFFDCFCE7),
      950: const Color(0xFFF0FDF4),
    },
  };
}
