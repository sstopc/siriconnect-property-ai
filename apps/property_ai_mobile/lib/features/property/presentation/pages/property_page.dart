import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_spacing.dart';
import '../providers/property_list_provider.dart';
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
            const PropertySearchBar(),

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
                  if (items.isEmpty) {
                    return const Center(
                      child: Text(
                        'No properties found.',
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return PropertyCard(
                        property: items[index],
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