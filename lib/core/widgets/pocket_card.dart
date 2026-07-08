import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PocketCard extends StatelessWidget {
  const PocketCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
  });

  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: AppTheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: AppTheme.cyan.withValues(alpha: 0.18),
        ),
      ),
      child: child,
    );
  }
}