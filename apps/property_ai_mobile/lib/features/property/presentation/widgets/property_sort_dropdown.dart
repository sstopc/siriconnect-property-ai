import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../domain/entities/property_sort.dart';
import '../providers/property_sort_provider.dart';

class PropertySortDropdown extends ConsumerWidget {
  const PropertySortDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sort = ref.watch(propertySortProvider);

    return Row(
      children: [
        const Text(
          'Sort by',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(width: AppSpacing.sm),

        DropdownButton<PropertySort>(
          value: sort,

          underline: const SizedBox(),

          onChanged: (value) {
            if (value != null) {
              ref.read(propertySortProvider.notifier).state = value;
            }
          },

          items: PropertySort.values.map((sort) {
            return DropdownMenuItem(
              value: sort,
              child: Text(_label(sort)),
            );
          }).toList(),
        ),
      ],
    );
  }

  String _label(PropertySort sort) {
    switch (sort) {
      case PropertySort.newest:
        return 'Newest';

      case PropertySort.priceLowToHigh:
        return 'Price ↑';

      case PropertySort.priceHighToLow:
        return 'Price ↓';

      case PropertySort.area:
        return 'Area';

      case PropertySort.bedrooms:
        return 'Bedrooms';
    }
  }
}