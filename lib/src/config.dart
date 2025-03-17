import 'package:flutter/material.dart';

class TwConfig {
  // Spacing scale (padding, margin, width, height, etc.)
  // Tailwind's spacing scale is based on a base unit of 4px (0.25rem).  'px' represents 1px.
  static Map<String, double> spacing = {
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

  // Breakpoints for responsive design
  // These match Tailwind's default breakpoints. Consider adding '3xl' and '4xl' for larger screens.
  static Map<String, double> breakpoints = {
    'sm': 640.0,
    'md': 768.0,
    'lg': 1024.0,
    'xl': 1280.0,
    '2xl': 1536.0,
    '3xl': 1920.0,
    '4xl': 2560.0,
  };

  // Extended color palette for light and dark themes (Tailwind v4)
  // Consider adding more complete color shades for each color (e.g., 50, 100, 200... 900, 950 for all colors).
  // Tailwind uses the following structure: theme: { extend: { colors: { colorName: { shade: colorValue } } } }
  static Map<String, Map<String, Map<int, Color>>> colors = {
    'light': {
      'slate': {
        50: Color(0xFFF8FAFC),
        100: Color(0xFFF1F5F9),
        200: Color(0xFFE2E8F0),
        300: Color(0xFFCBD5E1),
        400: Color(0xFF94A3B8),
        500: Color(0xFF64748B),
        600: Color(0xFF475569),
        700: Color(0xFF334155),
        800: Color(0xFF1E293B),
        900: Color(0xFF0F172A),
        950: Color(0xFF020617),
      },
      'blue': {
        50: Color(0xFFEFF6FF),
        100: Color(0xFFDBEAFE),
        200: Color(0xFFBFDBFE),
        300: Color(0xFF93C5FD),
        400: Color(0xFF60A5FA),
        500: Color(0xFF3B82F6),
        600: Color(0xFF2563EB),
        700: Color(0xFF1D4ED8),
        800: Color(0xFF1E40AF),
        900: Color(0xFF1E3A8A),
        950: Color(0xFF172554),
      },
      'red': {
        50: Color(0xFFFEF2F2),
        100: Color(0xFFFEE2E2),
        200: Color(0xFFFECACA),
        300: Color(0xFFFCA5A5),
        400: Color(0xFFF87171),
        500: Color(0xFFEF4444),
        600: Color(0xFFDC2626),
        700: Color(0xFFB91C1C),
        800: Color(0xFF991B1B),
        900: Color(0xFF7F1D1D),
        950: Color(0xFF450A0A),
      },
      'green': {
        50: Color(0xFFF0FDF4),
        100: Color(0xFFDCFCE7),
        200: Color(0xFFBBF7D0),
        300: Color(0xFF86EFAC),
        400: Color(0xFF34D399),
        500: Color(0xFF22C55E),
        600: Color(0xFF16A34A),
        700: Color(0xFF15803D),
        800: Color(0xFF166534),
        900: Color(0xFF14532D),
        950: Color(0xFF052E16),
      },
      'emerald': {
        50: Color(0xFFECFDF5),
        100: Color(0xFFD1FAE5),
        200: Color(0xFFA7F3D0),
        300: Color(0xFF6EE7B7),
        400: Color(0xFF34D399),
        500: Color(0xFF10B981),
        600: Color(0xFF059669),
        700: Color(0xFF047857),
        800: Color(0xFF065F46),
        900: Color(0xFF064E3B),
        950: Color(0xFF022C22),
      },
      'teal': {
        50: Color(0xFFF0FDFA),
        100: Color(0xFFCCFBF1),
        200: Color(0xFF99F6E4),
        300: Color(0xFF5EEAD4),
        400: Color(0xFF2DD4BF),
        500: Color(0xFF14B8A6),
        600: Color(0xFF0D9488),
        700: Color(0xFF0F766E),
        800: Color(0xFF115E59),
        900: Color(0xFF134E4A),
        950: Color(0xFF042F2E),
      },
      'cyan': {
        50: Color(0xFFECFEFF),
        100: Color(0xFFCFFAFE),
        200: Color(0xFFA5F3FC),
        300: Color(0xFF67E8F9),
        400: Color(0xFF22D3EE),
        500: Color(0xFF06B6D4),
        600: Color(0xFF0891B2),
        700: Color(0xFF0E7490),
        800: Color(0xFF155E75),
        900: Color(0xFF164E63),
        950: Color(0xFF083344),
      },
      'indigo': {
        50: Color(0xFFEEF2FF),
        100: Color(0xFFE0E7FF),
        200: Color(0xFFC7D2FE),
        300: Color(0xFFA5B4FC),
        400: Color(0xFF818CF8),
        500: Color(0xFF6366F1),
        600: Color(0xFF4F46E5),
        700: Color(0xFF4338CA),
        800: Color(0xFF3730A3),
        900: Color(0xFF312E81),
        950: Color(0xFF1E1B4B),
      },
      'violet': {
        50: Color(0xFFF5F3FF),
        100: Color(0xFFEDE9FE),
        200: Color(0xFFDDD6FE),
        300: Color(0xFFC4B5FD),
        400: Color(0xFFA78BFA),
        500: Color(0xFF8B5CF6),
        600: Color(0xFF7C3AED),
        700: Color(0xFF6D28D9),
        800: Color(0xFF5B21B6),
        900: Color(0xFF4C1D95),
        950: Color(0xFF2E1065),
      },
      'amber': {
        50: Color(0xFFFFFBEB),
        100: Color(0xFFFEF3C7),
        200: Color(0xFFFDE68A),
        300: Color(0xFFFCD34D),
        400: Color(0xFFFBBF24),
        500: Color(0xFFF59E0B),
        600: Color(0xFFD97706),
        700: Color(0xFFB45309),
        800: Color(0xFF92400E),
        900: Color(0xFF78350F),
        950: Color(0xFF451A03),
      },
      'gray': {
        50: Color(0xFFf9fafb),
        100: Color(0xFFf3f4f6),
        200: Color(0xFFe5e7eb),
        300: Color(0xFFd1d5db),
        400: Color(0xFF9ca3af),
        500: Color(0xFF6b7280),
        600: Color(0xFF4b5563),
        700: Color(0xFF374151),
        800: Color(0xFF1f2937),
        900: Color(0xFF111827),
        950: Color(0xFF030712),
      },
    },
    'dark': {
      'slate': {
        50: Color(0xFF020617),
        100: Color(0xFF0F172A),
        200: Color(0xFF1E293B),
        300: Color(0xFF334155),
        400: Color(0xFF475569),
        500: Color(0xFF64748B),
        600: Color(0xFF94A3B8),
        700: Color(0xFFCBD5E1),
        800: Color(0xFFE2E8F0),
        900: Color(0xFFF1F5F9),
        950: Color(0xFFF8FAFC),
      },
      'blue': {
        50: Color(0xFF172554),
        100: Color(0xFF1E3A8A),
        200: Color(0xFF1E40AF),
        300: Color(0xFF1D4ED8),
        400: Color(0xFF2563EB),
        500: Color(0xFF3B82F6),
        600: Color(0xFF60A5FA),
        700: Color(0xFF93C5FD),
        800: Color(0xFFBFDBFE),
        900: Color(0xFFDBEAFE),
        950: Color(0xFFEFF6FF),
      },
      'red': {
        50: Color(0xFF7F1D1D),
        100: Color(0xFF991B1B),
        200: Color(0xFFEF4444),
        300: Color(0xFFFCA5A5),
        400: Color(0xFFF87171),
        500: Color(0xFFF87171),
        600: Color(0xFFDC2626),
        700: Color(0xFFB91C1C),
        800: Color(0xFF991B1B),
        900: Color(0xFFFEE2E2),
        950: Color(0xFFFEF2F2),
      },
      'green': {
        50: Color(0xFF14532D),
        100: Color(0xFF166534),
        200: Color(0xFF15803D),
        300: Color(0xFF22C55E),
        400: Color(0xFF34D399),
        500: Color(0xFF4ADE80),
        600: Color(0xFF86EFAC),
        700: Color(0xFFBBF7D0),
        800: Color(0xFFDCFCE7),
        900: Color(0xFFF0FDF4),
        950: Color(0xFFF0FDF4),
      },
      'violet': {
        50: Color(0xFF2E1065),
        100: Color(0xFF4C1D95),
        200: Color(0xFF5B21B6),
        300: Color(0xFF6D28D9),
        400: Color(0xFF7C3AED),
        500: Color(0xFF8B5CF6),
        600: Color(0xFFA78BFA),
        700: Color(0xFFC4B5FD),
        800: Color(0xFFDDD6FE),
        900: Color(0xFFEDE9FE),
        950: Color(0xFFF5F3FF),
      },
      'emerald': {
        50: Color(0xFF064E3B),
        100: Color(0xFF065F46),
        200: Color(0xFF047857),
        300: Color(0xFF059669),
        400: Color(0xFF10B981),
        500: Color(0xFF34D399),
        600: Color(0xFF6EE7B7),
        700: Color(0xFFA7F3D0),
        800: Color(0xFFD1FAE5),
        900: Color(0xFFECFDF5),
        950: Color(0xFFF0FDF4),
      },
      'amber': {
        50: Color(0xFF78350F),
        100: Color(0xFF92400E),
        200: Color(0xFFB45309),
        300: Color(0xFFD97706),
        400: Color(0xFFF59E0B),
        500: Color(0xFFFBBF24),
        600: Color(0xFFFCD34D),
        700: Color(0xFFFDE68A),
        800: Color(0xFFFEF3C7),
        900: Color(0xFFFFFBEB),
        950: Color(0xFFFFFBEB),
      },
      'cyan': {
        50: Color(0xFF083344),
        100: Color(0xFF164E63),
        200: Color(0xFF155E75),
        300: Color(0xFF0E7490),
        400: Color(0xFF0891B2),
        500: Color(0xFF06B6D4),
        600: Color(0xFF22D3EE),
        700: Color(0xFF67E8F9),
        800: Color(0xFFA5F3FC),
        900: Color(0xFFCFFAFE),
        950: Color(0xFFECFEFF),
      },
      'pink': {
        50: Color(0xFF831843),
        100: Color(0xFF9D174D),
        200: Color(0xFFBE185D),
        300: Color(0xFFDB2777),
        400: Color(0xFFEC4899),
        500: Color(0xFFF472B6),
        600: Color(0xFFF9A8D4),
        700: Color(0xFFFBCFE8),
        800: Color(0xFFFCE7F3),
        900: Color(0xFFFDF2F8),
        950: Color(0xFFFDF2F8),
      },
      'gray': {
        50: Color(0xFF030712),
        100: Color(0xFF111827),
        200: Color(0xFF1f2937),
        300: Color(0xFF374151),
        400: Color(0xFF4b5563),
        500: Color(0xFF6b7280),
        600: Color(0xFF9ca3af),
        700: Color(0xFFd1d5db),
        800: Color(0xFFe5e7eb),
        900: Color(0xFFf3f4f6),
        950: Color(0xFFf9fafb),
      },
    },
  };

  // Text sizes
  // Tailwind uses 'rem' units for text sizes, based on the root font size (usually 16px).
  static Map<String, double> textSizes = {
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

  // Font weights
  static Map<String, FontWeight> fontWeights = {
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

  // Font families
  // Define font families used in your application. Import and use these.
  static Map<String, String> fontFamilies = {
    'sans': 'Roboto', // Or your default sans-serif font
    'serif': 'serif', // Default serif font
    'mono': 'monospace', // Default monospace font
  };

  // Line heights (leading in Tailwind)
  // Tailwind uses unitless line heights, which are multipliers of the font size.
  static Map<String, double> lineHeights = {
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

  // Letter spacing (tracking in Tailwind)
  static Map<String, double> letterSpacing = {
    'tighter': -0.8,
    'tight': -0.4,
    'normal': 0.0,
    'wide': 0.4,
    'wider': 0.8,
    'widest': 2.0,
  };

  // Opacity scale
  // Tailwind uses percentages for opacity.
  static Map<String, double> opacity = {
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

  // Border widths
  static Map<String, double> borderWidths = {
    '0': 0.0,
    'DEFAULT': 1.0,
    '2': 2.0,
    '4': 4.0,
    '8': 8.0,
  };

  // Border radius
  static Map<String, double> borderRadius = {
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

  // Shadows (simplified for Flutter, using elevation-like values)
  // Consider adding more variations, including color variations based on themes.
  static Map<String, List<BoxShadow>> shadows = {
    'sm': [
      BoxShadow(
        color: Color(0x33000000),
        blurRadius: 2.0,
        offset: Offset(0, 1),
      ),
    ],
    'DEFAULT': [
      BoxShadow(
        color: Color(0x1A000000),
        blurRadius: 4.0,
        offset: Offset(0, 2),
      ),
    ],
    'md': [
      BoxShadow(
        color: Color(0x1A000000),
        blurRadius: 6.0,
        offset: Offset(0, 3),
      ),
    ],
    'lg': [
      BoxShadow(
        color: Color(0x2D000000),
        blurRadius: 12.0,
        offset: Offset(0, 4),
      ),
    ],
    'xl': [
      BoxShadow(
        color: Color(0x33000000),
        blurRadius: 20.0,
        offset: Offset(0, 6),
      ),
    ],
    '2xl': [
      BoxShadow(
        color: Color(0x40000000),
        blurRadius: 25.0,
        offset: Offset(0, 10),
      ),
    ],
    'none': [],
  };

  // Transition durations (for animations)
  // Durations are in milliseconds.
  static Map<String, int> durations = {
    '75': 75,
    '100': 100,
    '150': 150,
    '200': 200,
    '300': 300,
    '500': 500,
    '700': 700,
    '1000': 1000,
  };

  // Transition easing functions (approximations)
  static Map<String, Curve> easing = {
    'linear': Curves.linear,
    'in': Curves.easeIn,
    'out': Curves.easeOut,
    'inOut': Curves.easeInOut,
    'ease': Curves.ease, // Standard ease
    'bounce': Curves.bounceIn, // Example of a more complex curve
    // Add more as needed (e.g., custom Bezier curves)
  };

  // Z-index values
  static Map<String, int> zIndex = {
    '0': 0,
    '10': 10,
    '20': 20,
    '30': 30,
    '40': 40,
    '50': 50,
    'auto': 9999,
  };

  // List Style Type (for lists)
  static Map<String, ListStyleType> listStyleType = {
    'none': ListStyleType.none,
    'disc': ListStyleType.disc,
    'decimal': ListStyleType.decimal,
  };

  // Display property
  static Map<String, String> display = {
    'block': 'block', //String representation as flutter doesn't have direct display property
    'inlineBlock': 'inline-block',
    'inline': 'inline',
    'flex': 'flex',
    'inlineFlex': 'inline-flex',
    'grid': 'grid',
    'inlineGrid': 'inline-grid',
    'table': 'table',
    'inlineTable': 'inline-table',
    'tableCaption': 'table-caption',
    'tableCell': 'table-cell',
    'tableColumn': 'table-column',
    'tableColumnGroup': 'table-column-group',
    'tableFooterGroup': 'table-footer-group',
    'tableHeaderGroup': 'table-header-group',
    'tableRow': 'table-row',
    'tableRowGroup': 'table-row-group',
    'hidden': 'hidden',
  };

  // Object Fit
  static Map<String, BoxFit> objectFit = {
    'contain': BoxFit.contain,
    'cover': BoxFit.cover,
    'fill': BoxFit.fill,
    'fitWidth': BoxFit.fitWidth,
    'fitHeight': BoxFit.fitHeight,
    'none': BoxFit.none,
    'scaleDown': BoxFit.scaleDown,
  };

  // Object Position (alignment) - Simplified, map to Alignment
  static Map<String, Alignment> objectPosition = {
    'bottom': Alignment.bottomCenter,
    'center': Alignment.center,
    'left': Alignment.centerLeft,
    'right': Alignment.centerRight,
    'top': Alignment.topCenter,
    'bottomLeft': Alignment.bottomLeft,
    'bottomRight': Alignment.bottomRight,
    'topLeft': Alignment.topLeft,
    'topRight': Alignment.topRight,
  };

  // Pointer Events
  static Map<String, String> pointerEvents = {
    'auto': 'auto',
    'none': 'none',
  };

  // Overflow
  static Map<String, String> overflow = {
    'auto': 'auto',
    'hidden': 'hidden',
    'visible': 'visible',
    'scroll': 'scroll',
  };

  // Position
  static Map<String, String> position = {
    'static': 'static',
    'fixed': 'fixed',
    'absolute': 'absolute',
    'relative': 'relative',
    'sticky': 'sticky',
  };

  // User Select
  static Map<String, String> userSelect = {
    'auto': 'auto',
    'none': 'none',
    'text': 'text',
    'all': 'all',
  };

  //  Flexbox Specific Configuration
  static Map<String, int> flexGrow = {
    '0': 0,
    '1': 1,
  };

  static Map<String, int> flexShrink = {
    '0': 0,
    '1': 1,
  };

  static Map<String, String> flexDirection = {
    'row': 'row',
    'rowReverse': 'row-reverse',
    'col': 'column',
    'colReverse': 'column-reverse',
  };

  static Map<String, String> flexWrap = {
    'wrap': 'wrap',
    'nowrap': 'nowrap',
    'wrapReverse': 'wrap-reverse',
  };

  static Map<String, String> placeContent = {
    'center': 'center',
    'start': 'start',
    'end': 'end',
    'between': 'space-between',
    'around': 'space-around',
    'evenly': 'space-evenly',
    'stretch': 'stretch',
  };

  static Map<String, String> placeItems = {
    'start': 'start',
    'center': 'center',
    'end': 'end',
    'stretch': 'stretch',
  };

  // Grid Configuration
  static Map<String, String> gridTemplateColumns = {
    'none': 'none',
    '1': 'repeat(1, minmax(0, 1fr))',
    '2': 'repeat(2, minmax(0, 1fr))',
    '3': 'repeat(3, minmax(0, 1fr))',
    '4': 'repeat(4, minmax(0, 1fr))',
    '5': 'repeat(5, minmax(0, 1fr))',
    '6': 'repeat(6, minmax(0, 1fr))',
    '7': 'repeat(7, minmax(0, 1fr))',
    '8': 'repeat(8, minmax(0, 1fr))',
    '9': 'repeat(9, minmax(0, 1fr))',
    '10': 'repeat(10, minmax(0, 1fr))',
    '11': 'repeat(11, minmax(0, 1fr))',
    '12': 'repeat(12, minmax(0, 1fr))',
  };

  static Map<String, String> gridColumn = {
    'auto': 'auto',
    'span1': 'span 1 / span 1',
    'span2': 'span 2 / span 2',
    'span3': 'span 3 / span 3',
    'span4': 'span 4 / span 4',
    'span5': 'span 5 / span 5',
    'span6': 'span 6 / span 6',
    'span7': 'span 7 / span 7',
    'span8': 'span 8 / span 8',
    'span9': 'span 9 / span 9',
    'span10': 'span 10 / span 10',
    'span11': 'span 11 / span 11',
    'span12': 'span 12 / span 12',
    '1': '1',
    '2': '2',
    '3': '3',
    '4': '4',
    '5': '5',
    '6': '6',
    '7': '7',
    '8': '8',
    '9': '9',
    '10': '10',
    '11': '11',
    '12': '12',
    '13': '13',
  };

  static Map<String, String> placeSelf = {
    'auto': 'auto',
    'start': 'start',
    'center': 'center',
    'end': 'end',
    'stretch': 'stretch',
  };

  // Aspect Ratio (Flutter's AspectRatio Widget)
  static Map<String, double> aspectRatio = {
    'square': 1,
    'video': 16 / 9,
    '1/1': 1 / 1,
    '2/1': 2 / 1,
    '16/9': 16 / 9,
    '4/3': 4 / 3,
    '3/2': 3 / 2,
    '5/4': 5 / 4,
    'custom': 1.0, // Use for custom aspect ratios, needs separate handling
  };

// Divide Width and Style (for dividing elements, like borders between elements)
  static Map<String, double> divideWidth = {
    '0': 0.0,
    'DEFAULT': 1.0,
    '2': 2.0,
    '4': 4.0,
    '8': 8.0,
  };

  static Map<String, BorderStyle> divideStyle = {
    'solid': BorderStyle.solid,
  };

// Outline Width, Style and Offset (for focus states, etc.)
  static Map<String, double> outlineWidth = {
    '0': 0.0,
    'DEFAULT': 2.0,
    '4': 4.0,
    '8': 8.0,
  };

// Blur
  static Map<String, double> blur = {
    'none': 0.0,
    'sm': 4.0,
    'DEFAULT': 8.0,
    'md': 12.0,
    'lg': 16.0,
    'xl': 24.0,
    '2xl': 40.0,
    '3xl': 64.0,
  };

// Brightness
  static Map<String, double> brightness = {
    '0': 0.0,
    '50': 0.5,
    '75': 0.75,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
    '105': 1.05,
    '110': 1.1,
    '125': 1.25,
    '150': 1.5,
  };

// Contrast
  static Map<String, double> contrast = {
    '0': 0.0,
    '50': 0.5,
    '75': 0.75,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
    '105': 1.05,
    '110': 1.1,
    '125': 1.25,
    '150': 1.5,
  };

// Grayscale
  static Map<String, double> grayscale = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Hue Rotate
  static Map<String, double> hueRotate = {
    '0': 0.0,
    '15': 15.0,
    '30': 30.0,
    '60': 60.0,
    '90': 90.0,
    '180': 180.0,
  };

// Invert
  static Map<String, double> invert = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Saturate
  static Map<String, double> saturate = {
    '0': 0.0,
    '50': 0.5,
    '100': 1.0,
    '150': 1.5,
    '200': 2.0,
  };

// Sepia
  static Map<String, double> sepia = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Screen Blend Mode
  static Map<String, BlendMode> screenBlendMode = {
    'multiply': BlendMode.multiply,
    'screen': BlendMode.screen,
    'overlay': BlendMode.overlay,
    'darken': BlendMode.darken,
    'lighten': BlendMode.lighten,
    'colorDodge': BlendMode.colorDodge,
    'colorBurn': BlendMode.colorBurn,
    'hardLight': BlendMode.hardLight,
    'softLight': BlendMode.softLight,
    'difference': BlendMode.difference,
    'exclusion': BlendMode.exclusion,
    'hue': BlendMode.hue,
    'saturation': BlendMode.saturation,
    'color': BlendMode.color,
    'luminosity': BlendMode.luminosity,
  };

// Backdrop Blur
  static Map<String, double> backdropBlur = {
    'none': 0.0,
    'sm': 4.0,
    'DEFAULT': 8.0,
    'md': 12.0,
    'lg': 16.0,
    'xl': 24.0,
    '2xl': 40.0,
    '3xl': 64.0,
  };

// Backdrop Brightness
  static Map<String, double> backdropBrightness = {
    '0': 0.0,
    '50': 0.5,
    '75': 0.75,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
    '105': 1.05,
    '110': 1.1,
    '125': 1.25,
    '150': 1.5,
  };

// Backdrop Contrast
  static Map<String, double> backdropContrast = {
    '0': 0.0,
    '50': 0.5,
    '75': 0.75,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
    '105': 1.05,
    '110': 1.1,
    '125': 1.25,
    '150': 1.5,
  };

// Backdrop Grayscale
  static Map<String, double> backdropGrayscale = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Backdrop Hue Rotate
  static Map<String, double> backdropHueRotate = {
    '0': 0.0,
    '15': 15.0,
    '30': 30.0,
    '60': 60.0,
    '90': 90.0,
    '180': 180.0,
  };

// Backdrop Invert
  static Map<String, double> backdropInvert = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Backdrop Opacity
  static Map<String, double> backdropOpacity = {
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

// Backdrop Saturate
  static Map<String, double> backdropSaturate = {
    '0': 0.0,
    '50': 0.5,
    '100': 1.0,
    '150': 1.5,
    '200': 2.0,
  };

// Backdrop Sepia
  static Map<String, double> backdropSepia = {
    '0': 0.0,
    'DEFAULT': 1.0,
  };

// Mix Blend Mode
  static Map<String, BlendMode> mixBlendMode = {
    'multiply': BlendMode.multiply,
    'screen': BlendMode.screen,
    'overlay': BlendMode.overlay,
    'darken': BlendMode.darken,
    'lighten': BlendMode.lighten,
    'colorDodge': BlendMode.colorDodge,
    'colorBurn': BlendMode.colorBurn,
    'hardLight': BlendMode.hardLight,
    'softLight': BlendMode.softLight,
    'difference': BlendMode.difference,
    'exclusion': BlendMode.exclusion,
    'hue': BlendMode.hue,
    'saturation': BlendMode.saturation,
    'color': BlendMode.color,
    'luminosity': BlendMode.luminosity,
  };

// Stroke Width (for SVGs, Shapes)
  static Map<String, double> strokeWidth = {
    '0': 0.0,
    'DEFAULT': 1.0,
    '2': 2.0,
  };

// Transform Origin
  static Map<String, Alignment> transformOrigin = {
    'bottom': Alignment.bottomCenter,
    'center': Alignment.center,
    'left': Alignment.centerLeft,
    'right': Alignment.centerRight,
    'top': Alignment.topCenter,
    'bottomLeft': Alignment.bottomLeft,
    'bottomRight': Alignment.bottomRight,
    'topLeft': Alignment.topLeft,
    'topRight': Alignment.topRight,
  };

// Rotate values (degrees)
  static Map<String, double> rotate = {
    '0': 0.0,
    '45': 45.0,
    '90': 90.0,
    '180': 180.0,
  };

// Scale values
  static Map<String, double> scale = {
    '0': 0.0,
    '50': 0.5,
    '75': 0.75,
    '90': 0.9,
    '95': 0.95,
    '100': 1.0,
    '105': 1.05,
    '110': 1.1,
    '125': 1.25,
    '150': 1.5,
  };

// Translate values (using spacing scale)
  static Map<String, double> translate = {
    '0': 0.0,
    '1': 4.0,
    '2': 8.0,
    '3': 12.0,
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
    'full': double.infinity,
    '1/2': 0.5, // Fraction of the element size, requires separate handling
    '1/3': 1 / 3,
    '2/3': 2 / 3,
    '1/4': 0.25,
    '2/4': 0.5,
    '3/4': 0.75,
  };

// Skew values (degrees)
  static Map<String, double> skew = {
    '0': 0.0,
    '3': 3.0,
    '6': 6.0,
    '12': 12.0,
  };

// Margin Auto
  static Map<String, bool> marginAuto = {
    'auto': true,
  };

//Scroll Margin
  static Map<String, double> scrollMargin = {
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

// Will Change
  static Map<String, String> willChange = {
    'auto': 'auto',
    'scroll': 'scroll-position',
    'contents': 'contents',
    'transform': 'transform',
  };

// Caret Color
  static Map<String, String> caretColor = {
    'auto': 'auto',
// Assuming you'll handle color values separately using your color map
  };

// Fill Color (For SVG elements)
  static Map<String, String> fillColor = {
    'current': 'currentColor',
// Assuming you'll handle color values separately using your color map
  };

// Stroke Color (For SVG elements)
  static Map<String, String> strokeColor = {
    'current': 'currentColor',
// Assuming you'll handle color values separately using your color map
  };

// Paint Order (For SVG elements)
  static Map<String, String> paintOrder = {
    'markers': 'markers',
    'strokes': 'strokes',
    'fill': 'fill',
  };

// Accessibility
  static Map<String, bool> srOnly = {
    'true': true,
    'false': false,
  };

// Pointer
  static Map<String, String> pointer = {
    'auto': 'auto',
    'none': 'none',
  };

// Caret Shape
  static Map<String, String> caretShape = {
    'bar': 'bar',
    'block': 'block',
    'underline': 'underline',
  };

  static Map<String, String> scrollBehavior = {
    'auto': 'auto',
    'smooth': 'smooth',
  };

  static Map<String, String> touchAction = {
    'auto': 'auto',
    'none': 'none',
    'panX': 'pan-x',
    'panY': 'pan-y',
    'pinchZoom': 'pinch-zoom',
    'manipulation': 'manipulation',
  };

// Customization methods
  static void setSpacing(Map<String, double> customSpacing) {
    spacing = {...spacing, ...customSpacing};
  }

  static void setBreakpoints(Map<String, double> customBreakpoints) {
    breakpoints = {...breakpoints, ...customBreakpoints};
  }

  static void setColors(String theme, Map<String, Map<int, Color>> customColors) {
    colors[theme] = {...colors[theme]!, ...customColors};
  }

  static void setTextSizes(Map<String, double> customSizes) {
    textSizes = {...textSizes, ...customSizes};
  }

  static void setFontWeights(Map<String, FontWeight> customWeights) {
    fontWeights = {...fontWeights, ...customWeights};
  }

  static void setFontFamilies(Map<String, String> customFamilies) {
    fontFamilies = {...fontFamilies, ...customFamilies};
  }

  static void setLineHeights(Map<String, double> customLineHeights) {
    lineHeights = {...lineHeights, ...customLineHeights};
  }

  static void setLetterSpacing(Map<String, double> customLetterSpacing) {
    letterSpacing = {...letterSpacing, ...customLetterSpacing};
  }

  static void setOpacity(Map<String, double> customOpacity) {
    opacity = {...opacity, ...customOpacity};
  }

  static void setBorderWidths(Map<String, double> customWidths) {
    borderWidths = {...borderWidths, ...customWidths};
  }

  static void setBorderRadius(Map<String, double> customRadius) {
    borderRadius = {...borderRadius, ...customRadius};
  }

  static void setShadows(Map<String, List<BoxShadow>> customShadows) {
    shadows = {...shadows, ...customShadows};
  }

  static void setDurations(Map<String, int> customDurations) {
    durations = {...durations, ...customDurations};
  }

  static void setZIndex(Map<String, int> customZIndex) {
    zIndex = {...zIndex, ...customZIndex};
  }

  static void setEasing(Map<String, Curve> customEasing) {
    easing = {...easing, ...customEasing};
  }

  static void setListStyleType(Map<String, ListStyleType> customListStyleType) {
    listStyleType = {...listStyleType, ...customListStyleType};
  }

  static void setDisplay(Map<String, String> customDisplay) {
    display = {...display, ...customDisplay};
  }

  static void setObjectFit(Map<String, BoxFit> customObjectFit) {
    objectFit = {...objectFit, ...customObjectFit};
  }

  static void setObjectPosition(Map<String, Alignment> customObjectPosition) {
    objectPosition = {...objectPosition, ...customObjectPosition};
  }

  static void setPointerEvents(Map<String, String> customPointerEvents) {
    pointerEvents = {...pointerEvents, ...customPointerEvents};
  }

  static void setOverflow(Map<String, String> customOverflow) {
    overflow = {...overflow, ...customOverflow};
  }

  static void setPosition(Map<String, String> customPosition) {
    position = {...position, ...customPosition};
  }

  static void setUserSelect(Map<String, String> customUserSelect) {
    userSelect = {...userSelect, ...customUserSelect};
  }

  static void setFlexGrow(Map<String, int> customFlexGrow) {
    flexGrow = {...flexGrow, ...customFlexGrow};
  }

  static void setFlexShrink(Map<String, int> customFlexShrink) {
    flexShrink = {...flexShrink, ...customFlexShrink};
  }

  static void setFlexDirection(Map<String, String> customFlexDirection) {
    flexDirection = {...flexDirection, ...customFlexDirection};
  }

  static void setFlexWrap(Map<String, String> customFlexWrap) {
    flexWrap = {...flexWrap, ...customFlexWrap};
  }

  static void setPlaceContent(Map<String, String> customPlaceContent) {
    placeContent = {...placeContent, ...customPlaceContent};
  }

  static void setPlaceItems(Map<String, String> customPlaceItems) {
    placeItems = {...placeItems, ...customPlaceItems};
  }

  static void setGridTemplateColumns(Map<String, String> customGridTemplateColumns) {
    gridTemplateColumns = {...gridTemplateColumns, ...customGridTemplateColumns};
  }

  static void setGridColumn(Map<String, String> customGridColumn) {
    gridColumn = {...gridColumn, ...customGridColumn};
  }

  static void setPlaceSelf(Map<String, String> customPlaceSelf) {
    placeSelf = {...placeSelf, ...customPlaceSelf};
  }

  static void setAspectRatio(Map<String, double> customAspectRatio) {
    aspectRatio = {...aspectRatio, ...customAspectRatio};
  }

  static void setDivideWidth(Map<String, double> customDivideWidth) {
    divideWidth = {...divideWidth, ...customDivideWidth};
  }

  static void setDivideStyle(Map<String, BorderStyle> customDivideStyle) {
    divideStyle = {...divideStyle, ...customDivideStyle};
  }

  static void setOutlineWidth(Map<String, double> customOutlineWidth) {
    outlineWidth = {...outlineWidth, ...customOutlineWidth};
  }

  static void setBlur(Map<String, double> customBlur) {
    blur = {...blur, ...customBlur};
  }

  static void setBrightness(Map<String, double> customBrightness) {
    brightness = {...brightness, ...customBrightness};
  }

  static void setContrast(Map<String, double> customContrast) {
    contrast = {...contrast, ...customContrast};
  }

  static void setGrayscale(Map<String, double> customGrayscale) {
    grayscale = {...grayscale, ...customGrayscale};
  }

  static void setHueRotate(Map<String, double> customHueRotate) {
    hueRotate = {...hueRotate, ...customHueRotate};
  }

  static void setInvert(Map<String, double> customInvert) {
    invert = {...invert, ...customInvert};
  }

  static void setSaturate(Map<String, double> customSaturate) {
    saturate = {...saturate, ...customSaturate};
  }

  static void setSepia(Map<String, double> customSepia) {
    sepia = {...sepia, ...customSepia};
  }

  static void setScreenBlendMode(Map<String, BlendMode> customScreenBlendMode) {
    screenBlendMode = {...screenBlendMode, ...customScreenBlendMode};
  }

  static void setBackdropBlur(Map<String, double> customBackdropBlur) {
    backdropBlur = {...backdropBlur, ...customBackdropBlur};
  }

  static void setBackdropBrightness(Map<String, double> customBackdropBrightness) {
    backdropBrightness = {...backdropBrightness, ...customBackdropBrightness};
  }

  static void setBackdropContrast(Map<String, double> customBackdropContrast) {
    backdropContrast = {...backdropContrast, ...customBackdropContrast};
  }

  static void setBackdropGrayscale(Map<String, double> customBackdropGrayscale) {
    backdropGrayscale = {...backdropGrayscale, ...customBackdropGrayscale};
  }

  static void setBackdropHueRotate(Map<String, double> customBackdropHueRotate) {
    backdropHueRotate = {...backdropHueRotate, ...customBackdropHueRotate};
  }

  static void setBackdropInvert(Map<String, double> customBackdropInvert) {
    backdropInvert = {...backdropInvert, ...customBackdropInvert};
  }

  static void setBackdropOpacity(Map<String, double> customBackdropOpacity) {
    backdropOpacity = {...backdropOpacity, ...customBackdropOpacity};
  }

  static void setBackdropSaturate(Map<String, double> customBackdropSaturate) {
    backdropSaturate = {...backdropSaturate, ...customBackdropSaturate};
  }

  static void setBackdropSepia(Map<String, double> customBackdropSepia) {
    backdropSepia = {...backdropSepia, ...customBackdropSepia};
  }

  static void setMixBlendMode(Map<String, BlendMode> customMixBlendMode) {
    mixBlendMode = {...mixBlendMode, ...customMixBlendMode};
  }

  static void setStrokeWidth(Map<String, double> customStrokeWidth) {
    strokeWidth = {...strokeWidth, ...customStrokeWidth};
  }

  static void setTransformOrigin(Map<String, Alignment> customTransformOrigin) {
    transformOrigin = {...transformOrigin, ...customTransformOrigin};
  }

  static void setRotate(Map<String, double> customRotate) {
    rotate = {...rotate, ...customRotate};
  }

  static void setScale(Map<String, double> customScale) {
    scale = {...scale, ...customScale};
  }

  static void setTranslate(Map<String, double> customTranslate) {
    translate = {...translate, ...customTranslate};
  }

  static void setSkew(Map<String, double> customSkew) {
    skew = {...skew, ...customSkew};
  }

  static void setMarginAuto(Map<String, bool> customMarginAuto) {
    marginAuto = {...marginAuto, ...customMarginAuto};
  }

  static void setScrollMargin(Map<String, double> customScrollMargin) {
    scrollMargin = {...scrollMargin, ...customScrollMargin};
  }

  static void setWillChange(Map<String, String> customWillChange) {
    willChange = {...willChange, ...customWillChange};
  }

  static void setCaretColor(Map<String, String> customCaretColor) {
    caretColor = {...caretColor, ...customCaretColor};
  }

  static void setFillColor(Map<String, String> customFillColor) {
    fillColor = {...fillColor, ...customFillColor};
  }

  static void setStrokeColor(Map<String, String> customStrokeColor) {
    strokeColor = {...strokeColor, ...customStrokeColor};
  }

  static void setPaintOrder(Map<String, String> customPaintOrder) {
    paintOrder = {...paintOrder, ...customPaintOrder};
  }

  static void setSrOnly(Map<String, bool> customSrOnly) {
    srOnly = {...srOnly, ...customSrOnly};
  }

  static void setPointer(Map<String, String> customPointer) {
    pointer = {...pointer, ...customPointer};
  }

  static void setCaretShape(Map<String, String> customCaretShape) {
    caretShape = {...caretShape, ...customCaretShape};
  }

  static void setScrollBehavior(Map<String, String> customScrollBehavior) {
    scrollBehavior = {...scrollBehavior, ...customScrollBehavior};
  }

  static void setTouchAction(Map<String, String> customTouchAction) {
    touchAction = {...touchAction, ...customTouchAction};
  }
}

enum ListStyleType {
  none,
  disc,
  decimal,
}
