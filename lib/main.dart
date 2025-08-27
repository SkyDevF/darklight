
import 'package:darklight/Providers/hard_provider.dart';
import 'package:darklight/models/riverpod_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Brightness brightness = ref.watch(riverpodIslightHard).islight
        ? Brightness.light
        : Brightness.dark;

    return MaterialApp(
      title: 'Briness',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,
        brightness: brightness,
        ),
        useMaterial3: true,
      ),
      
      home: const HardPage(),
    );
  }
}
