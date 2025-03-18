# Flutter Tailwind

A Flutter implementation of Tailwind CSS utility classes with screen utilities support. This package provides a set of extension methods on Flutter widgets that mirror Tailwind CSS classes, making it easy to style your Flutter widgets using familiar Tailwind-like syntax.

## Features

- Complete Tailwind CSS utility classes implementation
- Responsive design support with screen utilities
- Dark mode support
- Customizable theme configuration
- Easy to use widget extensions
- Screen size utilities powered by flutter_screenutil

## Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  flutter_tailwind_v4: ^1.0.0
  flutter_screenutil: ^5.9.0
```

## Usage

1. Initialize ScreenUtil in your app:

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Your design size
      builder: (context, child) => MaterialApp(
        title: 'Flutter Tailwind Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: child,
      ),
      child: const MyHomePage(),
    );
  }
}
```

2. Use Tailwind classes in your widgets:

```dart
import 'package:flutter_tailwind_v4/tailwind.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container()
      .bg('blue', 500)
      .p('4')
      .rounded('lg')
      .shadow('lg')
      .child(
        Text('Hello Tailwind!')
          .textColor('white')
          .fontSize('xl')
          .fontWeight('bold'),
      );
  }
}
```

## Available Utilities

### Spacing

- Padding: `p()`, `px()`, `py()`, `pt()`, `pr()`, `pb()`, `pl()`
- Margin: `m()`, `mx()`, `my()`, `mt()`, `mr()`, `mb()`, `ml()`

### Typography

- Font Size: `fontSize()`
- Font Weight: `fontWeight()`
- Letter Spacing: `letterSpacing()`
- Line Height: `lineHeight()`
- Text Color: `textColor()`

### Layout

- Width: `w()`, `minW()`, `maxW()`
- Height: `h()`, `minH()`, `maxH()`
- Flex: `flex()`, `row()`, `col()`
- Justify Content: `justifyStart()`, `justifyCenter()`, `justifyEnd()`, `justifyBetween()`, `justifyAround()`, `justifyEvenly()`
- Align Items: `itemsStart()`, `itemsCenter()`, `itemsEnd()`, `itemsStretch()`, `itemsBaseline()`

### Backgrounds

- Background Color: `bg()`

### Borders

- Border Radius: `rounded()`, `roundedT()`, `roundedB()`, `roundedL()`, `roundedR()`
- Border: `border()`

### Effects

- Opacity: `opacity()`
- Shadow: `shadow()`

### Interactivity

- Cursor: `cursorPointer()`
- User Select: `userSelectNone()`, `userSelectText()`

### Display

- Hidden: `hidden()`
- Block: `block()`
- Inline Block: `inlineBlock()`
- Inline: `inline()`

### Position

- Position: `relative()`, `absolute()`, `fixed()`, `sticky()`, `static()`

### Z-Index

- Z-Index: `z()`

### Overflow

- Overflow: `overflowVisible()`, `overflowHidden()`, `overflowScroll()`, `overflowAuto()`

### Responsive Design

Use the `responsive()` method to apply different styles at different breakpoints:

```dart
Container()
  .responsive(
    sm: '100%',
    md: '75%',
    lg: '50%',
    xl: '33%',
  )
```

## Customization

You can customize the theme by modifying the values in:

- `TwTheme` for spacing, typography, and other utilities
- `TwColors` for colors in both light and dark modes

## License

MIT


![Flutter Tailwind v4](https://raw.githubusercontent.com/ikku47/flutter_tailwind_v4/refs/heads/main/flutter_tailwind_v4.jpeg)


## Features

- **Utility-First Styling**: Apply Tailwind-style classes directly to Flutter widgets
- **Responsive Design**:
  - Built-in breakpoint system (sm, md, lg, xl, 2xl, 3xl, 4xl)
  - Responsive utilities that adapt to screen sizes
- **Rich Color System**:
  - Complete Tailwind v4 color palette
  - Support for custom color schemes
  - Dark mode color variants
- **Layout Utilities**:
  - Flexbox and Grid systems
  - Spacing (padding, margin)
  - Positioning
  - Display properties
- **Typography**:
  - Font sizes and weights
  - Text alignment and decoration
  - Line height and letter spacing
- **Visual Effects**:
  - Shadows and elevation
  - Border radius and styles
  - Opacity and visibility
  - Gradients
- **Interactive States**:
  - Hover and focus effects
  - Active and disabled states

## Getting Started

## Installation
Add this to your `pubspec.yaml`:
```yaml
dependencies:
  flutter_tailwind: ^0.1.0