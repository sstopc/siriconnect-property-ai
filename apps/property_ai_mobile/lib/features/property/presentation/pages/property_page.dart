import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../providers/filtered_property_provider.dart';
import '../providers/property_search_provider.dart';
import '../providers/property_statistics_provider.dart';
import '../widgets/property_card.dart';
import '../widgets/property_search_bar.dart';
import '../widgets/property_sort_dropdown.dart';
import '../widgets/property_statistics_card.dart';
import '../widgets/property_status_filter.dart';

class PropertyPage extends ConsumerWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statistics = ref.watch(propertyStatisticsProvider);
    final properties = ref.watch(filteredPropertyProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Properties')), 
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
            statistics.when(
              loading: () => const SizedBox.shrink(),
              error: (error, stackTrace) => const SizedBox.shrink(),
              data: (stats) => Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                child: PropertyStatisticsCard(
                  statistics: stats,
                ),
              ),
            ),
            PropertySearchBar(
              onChanged: (value) {
                ref.read(propertySearchProvider.notifier).state = value;
              },
            ),

            const SizedBox(height: AppSpacing.md),
            const PropertyStatusFilter(),
            const SizedBox(height: AppSpacing.md),
            const Align(
                  alignment: Alignment.centerRight,
                  child: PropertySortDropdown(),
                ),
            const SizedBox(height: AppSpacing.lg),

            Expanded(
              child: properties.when(
                loading: () => const Center(child: CircularProgressIndicator()),

                error: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),

                data: (filteredItems) {
                  if (filteredItems.isEmpty) {
                    return const Center(
                      child: Text(
                        'No properties found.',
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return PropertyCard(
                        property: filteredItems[index],
                      );
                    },
                  );
                }, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
