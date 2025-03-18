import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class TextFieldsSection extends StatelessWidget {
  const TextFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField()
        .tw('border rounded py-2 px-3 textColor-slate-700 bg-white focus:outline-none focus:border-blue-500');
  }
}