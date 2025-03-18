import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

class CardsSection extends StatelessWidget {
  const CardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(20),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFE5E7EB),
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: const Icon(Icons.image, size: 48, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Card Title")
                    .tw('text-lg font-bold textColor-slate-900'),
                const SizedBox(height: 8),
                const Text("Some quick example text to build on the card title and make up the bulk of the card's content.")
                    .tw('textColor-slate-700'),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Learn More'),
                ).tw('bg-blue-500 hover:bg-blue-700 textColor-white font-bold py-2 px-4 rounded'),
              ],
            ),
          ),
        ],
      ),
    ).tw('bg-white rounded-lg shadow-md');
  }
}