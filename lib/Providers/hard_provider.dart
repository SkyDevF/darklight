import 'package:darklight/models/riverpod_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Riverpod')),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIslightHard).changtheme(newBool: true);
              },
              label: const Text('light'),
              icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIslightHard).changtheme(newBool: false);
              },
              label: const Text('dark'),
              icon: const Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}
