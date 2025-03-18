import 'package:flutter/material.dart';
import 'package:flutter_tailwind_v4/flutter_tailwind_v4.dart';
import 'components/components.dart';

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
      builder: (context, child) {
        TwThemeConfig.initialize(context);
        return child!;
      },
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
      body: const ComponentListView(),
    );
  }
}

class ComponentListView extends StatelessWidget {
  const ComponentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ComponentSection(title: 'Buttons', child: ButtonsSection()),
            _ComponentSection(title: 'Text Fields', child: TextFieldsSection()),
            _ComponentSection(title: 'Cards', child: CardsSection()),
            _ComponentSection(title: 'Typography', child: TypographySection()),
            _ComponentSection(title: 'Images', child: ImagesSection()),
            _ComponentSection(title: 'Lists', child: ListsSection()),
          ],
        ),
      ),
    );
  }
}

class _ComponentSection extends StatelessWidget {
  final String title;
  final Widget child;

  const _ComponentSection({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title),
        child,
        const SizedBox(height: 24),
      ],
    );
  }
}