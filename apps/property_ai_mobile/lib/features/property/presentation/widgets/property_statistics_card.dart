import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';
import '../models/property_statistics.dart';

class PropertyStatisticsCard extends StatelessWidget {
  const PropertyStatisticsCard({
    super.key,
    required this.statistics,
  });

  final PropertyStatistics statistics;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _item(
              context,
              'Total',
              statistics.total,
              AppColors.primary,
            ),
            _item(
              context,
              'Available',
              statistics.available,
              Colors.green,
            ),
            _item(
              context,
              'Sold',
              statistics.sold,
              Colors.red,
            ),
            _item(
              context,
              'Rented',
              statistics.rented,
              Colors.orange,
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(
    BuildContext context,
    String label,
    int value,
    Color color,
  ) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(label),
      ],
    );
  }
}