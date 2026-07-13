import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../domain/entities/property.dart';
import '../providers/property_status_provider.dart';

class PropertyStatusFilter extends ConsumerWidget {
  const PropertyStatusFilter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStatus = ref.watch(propertyStatusProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildChip(
            context,
            ref,
            label: 'All',
            status: null,
            selected: selectedStatus == null,
          ),

          const SizedBox(width: AppSpacing.sm),

          ...PropertyStatus.values.expand(
            (status) => [
              _buildChip(
                context,
                ref,
                label: _displayName(status),
                status: status,
                selected: selectedStatus == status,
              ),
              const SizedBox(width: AppSpacing.sm),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip(
    BuildContext context,
    WidgetRef ref, {
    required String label,
    required PropertyStatus? status,
    required bool selected,
  }) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) {
        ref.read(propertyStatusProvider.notifier).state = status;
      },
    );
  }

  String _displayName(PropertyStatus status) {
    switch (status) {
      case PropertyStatus.available:
        return 'Available';
      case PropertyStatus.sold:
        return 'Sold';
      case PropertyStatus.rented:
        return 'Rented';
    }
  }
}
