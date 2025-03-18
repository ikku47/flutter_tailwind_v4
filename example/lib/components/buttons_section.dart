import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Primary'),
        ).tw('bg-blue-500 hover:bg-blue-700 textColor-white font-bold py-2 px-4 rounded'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Secondary'),
        ).tw('bg-gray-500 hover:bg-gray-700 textColor-white font-bold py-2 px-4 rounded'),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outline'),
        ).tw('border-blue-500 hover:border-blue-700 textColor-blue-500 hover:textColor-blue-700 font-bold py-2 px-4 rounded'),
      ],
    );
  }
}