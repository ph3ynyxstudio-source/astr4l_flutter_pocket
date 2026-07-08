import 'package:flutter/material.dart';

import '../features/pocket_builder/presentation/builder_screen.dart';

class Astr4lForgePocketApp extends StatelessWidget {
  const Astr4lForgePocketApp({super.key});

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
      home: const BuilderScreen(),
    );
  }
}