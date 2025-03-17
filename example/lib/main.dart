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
      themeMode: ThemeMode.light, // Enforce light theme
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, brightness: Brightness.light), // Explicitly set brightness to light
        brightness: Brightness.light, // Ensure light brightness

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
            .tw('textColor-slate-900'), // Removed dark theme styling from app bar title
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Buttons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling
              Wrap(
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
              ),
              const SizedBox(height: 24),

              const Text('Text Fields', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling
              TextFormField().tw('border rounded py-2 px-3 textColor-slate-700 bg-white focus:outline-none focus:border-blue-500'), //Removed dark theme styling
              const SizedBox(height: 24),

              const Text('Cards', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling
              const _ExampleCard(),

              const SizedBox(height: 24),
              const Text('Typography', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling

              const Text('This is a heading', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900'), // Removed dark theme styling
              const Text('This is a paragraph.', style: TextStyle(fontSize: 16))
                  .tw('textColor-slate-700'), // Removed dark theme styling

              const SizedBox(height: 24),
              const Text('Images', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling

              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://images.unsplash.com/photo-1682685797765-5e589ba35719?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ).tw('shadow-md'),

              const SizedBox(height: 24),
              const Text('Lists', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                  .tw('textColor-slate-900 mb-4'), // Removed dark theme styling
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  [
                  ListTile(leading: Icon(Icons.check), title: Text('Item 1')).tw('textColor-slate-900'), // Removed dark theme styling
                  ListTile(leading: Icon(Icons.check), title: Text('Item 2')).tw('textColor-slate-900'), // Removed dark theme styling
                  ListTile(leading: Icon(Icons.check), title: Text('Item 3')).tw('textColor-slate-900'), // Removed dark theme styling
                ],
              ).tw('divide-y divide-gray-200'), // Removed dark theme styling
            ],
          ),
        ),
      ),
    );
  }
}

class _ExampleCard extends StatelessWidget {
  const _ExampleCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card Image Placeholder
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.image, size: 48),
            ),
          ).tw('rounded-t-lg'),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Card Title", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                    .tw('textColor-slate-900'), // Removed dark theme styling
                const SizedBox(height: 8),
                const Text("Some quick example text to build on the card title and make up the bulk of the card's content.", style: TextStyle(fontSize: 14))
                    .tw('textColor-slate-700'), // Removed dark theme styling
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
    ).tw('bg-white rounded-lg shadow-md'); // Removed dark theme styling
  }
}