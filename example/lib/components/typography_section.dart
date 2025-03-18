import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class TypographySection extends StatelessWidget {
  const TypographySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('This is a heading')
            .tw('text-3xl font-bold textColor-slate-900'),
        const Text('This is a paragraph.')
            .tw('text-base textColor-slate-700'),
      ],
    );
  }
}