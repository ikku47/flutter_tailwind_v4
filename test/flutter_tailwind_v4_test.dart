import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart'; // Adjust import

void main() {
  testWidgets('tw applies multiple utilities', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: const Text('Test').tw('p-4 bg-blue-500'),
        ),
      ),
    );

    // First find the Container since it wraps everything
    final containerFinder = find.descendant(
      of: find.byType(Scaffold),
      matching: find.byType(Container),
    );
    expect(containerFinder, findsOneWidget);
    final containerWidget = tester.widget<Container>(containerFinder);
    expect(containerWidget.color, TwColors.getColor('blue', 500));

    // Then find the Padding inside the Container
    final paddingFinder = find.descendant(
      of: containerFinder,
      matching: find.byType(Padding),
    );
    expect(paddingFinder, findsOneWidget);
    final paddingWidget = tester.widget<Padding>(paddingFinder);
    expect(paddingWidget.padding, const EdgeInsets.all(16.0));
  });
}