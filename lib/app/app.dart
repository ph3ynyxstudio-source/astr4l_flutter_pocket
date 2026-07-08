import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../features/pocket_builder/presentation/builder_screen.dart';

class Astr4lForgePocketApp extends StatelessWidget {
  const Astr4lForgePocketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astr4lForge Pocket',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: const BuilderScreen(),
    );
  }
}