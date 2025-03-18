import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class ImagesSection extends StatelessWidget {
  const ImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        'https://picsum.photos/200/300',
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ).tw('shadow-md rounded-lg');
  }
}