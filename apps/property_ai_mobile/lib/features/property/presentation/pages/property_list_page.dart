import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/property_provider.dart';
import '../widgets/property_card.dart';
import '../widgets/property_search_bar.dart';

class PropertyListPage extends ConsumerWidget {
  const PropertyListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(propertyProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(propertyProvider.notifier).loadProperties();
        },
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: PropertySearchBar(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.properties.length,
                itemBuilder: (context, index) {
                  return PropertyCard(
                    property: state.properties[index],
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