import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../widgets/property_search_bar.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
            const PropertySearchBar(),

            const SizedBox(
              height: AppSpacing.lg,
            ),

            Expanded(
              child: Center(
                child: Text(
                  'Property list will be connected in Package 4E.3',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}