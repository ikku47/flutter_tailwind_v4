import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class ListsSection extends StatelessWidget {
  const ListsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          leading: const Icon(Icons.check, color: Colors.blue),
          title: const Text('Item 1'),
        ).tw('textColor-slate-900'),
        ListTile(
          leading: const Icon(Icons.check, color: Colors.blue),
          title: const Text('Item 2'),
        ).tw('textColor-slate-900'),
        ListTile(
          leading: const Icon(Icons.check, color: Colors.blue),
          title: const Text('Item 3'),
        ).tw('textColor-slate-900'),
      ],
    ).tw('divide-y divide-gray-200');
  }
}