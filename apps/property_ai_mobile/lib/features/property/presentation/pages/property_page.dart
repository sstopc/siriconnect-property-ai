import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../providers/property_list_provider.dart';
import '../providers/property_search_provider.dart';
import '../widgets/property_card.dart';
import '../widgets/property_search_bar.dart';

class PropertyPage extends ConsumerWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final properties = ref.watch(propertyListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
            PropertySearchBar(
              onChanged: (value) {
                ref.read(propertySearchProvider.notifier).state = value;
              },
            ),

            const SizedBox(height: AppSpacing.lg),

            Expanded(
              child: properties.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),

                error: (error, stackTrace) => Center(
                  child: Text(
                    'Error: $error',
                  ),
                ),

                data: (items) {
                  final search = ref.watch(propertySearchProvider).trim().toLowerCase();

                  final filteredItems = items.where((property) {
                    if (search.isEmpty) {
                      return true;
                    }

                    return property.title.toLowerCase().contains(search) ||
                        property.location.toLowerCase().contains(search);
                  }).toList();

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