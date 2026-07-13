import 'package:flutter/material.dart';

import '../widgets/property_basic_form.dart';

class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Property')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const LinearProgressIndicator(value: 1 / 6),

            const SizedBox(height: 24),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Step 1 of 6 - Basic Information',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),

            const SizedBox(height: 24),

            const Expanded(
              child: SingleChildScrollView(child: PropertyBasicForm()),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Next Step (Package 4D)
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
