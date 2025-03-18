import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        .tw('textColor-slate-900 mb-4');
  }
}