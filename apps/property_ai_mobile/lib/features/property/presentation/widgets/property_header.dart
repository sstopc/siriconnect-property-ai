import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_radius.dart';
import '../../../../core/theme/app_spacing.dart';

class PropertyHeader extends StatelessWidget {
  const PropertyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
          child: const Center(child: Icon(Icons.home_work_outlined, size: 72)),
        ),

        const SizedBox(height: AppSpacing.lg),

        Text(
          '2 BHK Apartment',
          style: Theme.of(context).textTheme.headlineSmall,
        ),

        const SizedBox(height: AppSpacing.sm),

        Text(
          'Miyapur, Hyderabad',
          style: Theme.of(context).textTheme.bodyMedium,
        ),

        const SizedBox(height: AppSpacing.md),

        Text(
          '₹ 75,00,000',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.success,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
