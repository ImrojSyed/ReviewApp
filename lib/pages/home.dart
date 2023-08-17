import 'package:flutter/material.dart';

import '../components/bottom_modal_sheet.dart';

class HomePage extends StatefulWidget {
  final String? nullableTitle;
  final String requiredTitle;
  final String defaultTitle;

  const HomePage({
    super.key,
    this.nullableTitle,
    required this.requiredTitle,
    this.defaultTitle = 'Default',
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.defaultTitle),
      ),
      body: const AppBottomSheet(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
