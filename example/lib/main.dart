import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      home: const ComponentListPage(),
    );
  }
}

class ComponentListPage extends StatelessWidget {
  const ComponentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tailwind Components')
            .tw('text-xl font-bold textColor-slate-900'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Buttons Section
              const SectionTitle(title: 'Buttons'),
              const ButtonsSection(),
              const SizedBox(height: 24),

              // Text Fields Section  
              const SectionTitle(title: 'Text Fields'),
              const TextFieldsSection(),
              const SizedBox(height: 24),

              // Cards Section
              const SectionTitle(title: 'Cards'),
              const CardsSection(),
              const SizedBox(height: 24),

              // Typography Section
              const SectionTitle(title: 'Typography'),
              const TypographySection(),
              const SizedBox(height: 24),

              // Images Section
              const SectionTitle(title: 'Images'),
              const ImagesSection(),
              const SizedBox(height: 24),

              // Lists Section
              const SectionTitle(title: 'Lists'),
              const ListsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        .tw('textColor-slate-900 mb-4');
  }
}

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

class TextFieldsSection extends StatelessWidget {
  const TextFieldsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField()
        .tw('border rounded py-2 px-3 textColor-slate-700 bg-white focus:outline-none focus:border-blue-500');
  }
}

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

class ListsSection extends StatelessWidget {
  const ListsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:  [
        ListTile(
          leading: Icon(Icons.check, color: Colors.blue),
          title: Text('Item 1'),
        ).tw('textColor-slate-900'),
        ListTile(
          leading: Icon(Icons.check, color: Colors.blue),
          title: Text('Item 2'),
        ).tw('textColor-slate-900'),
        ListTile(
          leading: Icon(Icons.check, color: Colors.blue),
          title: Text('Item 3'),
        ).tw('textColor-slate-900'),
      ],
    ).tw('divide-y divide-gray-200');
  }
}