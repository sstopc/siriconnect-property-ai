import 'package:flutter/material.dart';
import '../theme/app_spacing.dart';

import 'app_card.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        children: [
          Icon(icon, size: 36),
          const SizedBox(width: AppSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Text(
                value,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}