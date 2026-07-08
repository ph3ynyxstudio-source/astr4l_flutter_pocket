import 'package:flutter/material.dart';

import '../../../core/widgets/accent_button.dart';
import '../../../core/widgets/pocket_card.dart';
import 'preview_screen.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Astr4lForge Pocket'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              'Builder',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Créer une configuration de widget UI simple.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            PocketCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Configuration',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Aucun widget configuré pour le moment.',
                  ),
                  const SizedBox(height: 16),
                  AccentButton(
                    label: 'Ouvrir la preview',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PreviewScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            PocketCard(
              child: SizedBox(
                height: 160,
                child: Center(
                  child: Text(
                    'Zone preview vide',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}