import 'package:flutter/material.dart';

void main() {
  runApp(const Astr4lPocketApp());
}

class Astr4lPocketApp extends StatelessWidget {
  const Astr4lPocketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astr4lForge Pocket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF54D6FF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const Astr4lPocketHomePage(),
    );
  }
}

class Astr4lPocketHomePage extends StatelessWidget {
  const Astr4lPocketHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Astr4lForge Pocket'),
      ),
      body: const Center(
        child: Text(
          'Compagnon mobile Astr4lForge Pocket',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}