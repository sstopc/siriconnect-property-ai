import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../domain/entities/property_sort.dart';
import '../providers/property_list_provider.dart';
import '../providers/property_search_provider.dart';
import '../providers/property_sort_provider.dart';
import '../providers/property_status_provider.dart';
import '../widgets/property_card.dart';
import '../widgets/property_search_bar.dart';
import '../widgets/property_sort_dropdown.dart';
import '../widgets/property_status_filter.dart';

class PropertyPage extends ConsumerWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final properties = ref.watch(propertyListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Properties')),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
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

                data: (items) {
                  final search = ref
                      .watch(propertySearchProvider)
                      .trim()
                      .toLowerCase();
                  final selectedStatus = ref.watch(propertyStatusProvider);
                  final filteredItems = items.where((property) {
                    final matchesSearch =
                        search.isEmpty ||
                        property.title.toLowerCase().contains(search) ||
                        property.location.toLowerCase().contains(search);

                    final matchesStatus =
                        selectedStatus == null ||
                        property.status == selectedStatus;

                    return matchesSearch && matchesStatus;
                  }).toList();

                  final sort = ref.watch(propertySortProvider);

                  switch (sort) {
                    case PropertySort.newest:
                      filteredItems.sort(
                        (a, b) => b.id.compareTo(a.id),
                      );
                      break;

                    case PropertySort.priceLowToHigh:
                      filteredItems.sort(
                        (a, b) => a.price.compareTo(b.price),
                      );
                      break;

                    case PropertySort.priceHighToLow:
                      filteredItems.sort(
                        (a, b) => b.price.compareTo(a.price),
                      );
                      break;

                    case PropertySort.area:
                      filteredItems.sort(
                        (a, b) => b.areaSqft.compareTo(a.areaSqft),
                      );
                      break;

                    case PropertySort.bedrooms:
                      filteredItems.sort(
                        (a, b) => b.bedrooms.compareTo(a.bedrooms),
                      );
                      break;
                  }                  

                  if (filteredItems.isEmpty) {
                    return const Center(child: Text('No properties found.'));
                  }

                  return ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return PropertyCard(property: filteredItems[index]);
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
