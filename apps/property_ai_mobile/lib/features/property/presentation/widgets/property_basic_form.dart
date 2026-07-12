import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/property_form_provider.dart';

class PropertyBasicForm extends ConsumerStatefulWidget {
  const PropertyBasicForm({super.key});

  @override
  ConsumerState<PropertyBasicForm> createState() =>
      _PropertyBasicFormState();
}

class _PropertyBasicFormState
    extends ConsumerState<PropertyBasicForm> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _priceController;

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _priceController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bedrooms = ref.watch(propertyBedroomsProvider);
    final bathrooms = ref.watch(propertyBathroomsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Property Title
        TextFormField(
          controller: _titleController,
          decoration: const InputDecoration(
            labelText: 'Property Title',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.home_work_outlined),
          ),
          onChanged: (value) {
            ref.read(propertyTitleProvider.notifier).state = value;
          },
        ),

        const SizedBox(height: 20),

        /// Description
        TextFormField(
          controller: _descriptionController,
          maxLines: 3,
          decoration: const InputDecoration(
            labelText: 'Description',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.description_outlined),
          ),
          onChanged: (value) {
            ref.read(propertyDescriptionProvider.notifier).state = value;
          },
        ),

        const SizedBox(height: 20),

        /// Price
        TextFormField(
          controller: _priceController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Price',
            prefixText: '₹ ',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.currency_rupee),
          ),
          onChanged: (value) {
            ref.read(propertyPriceProvider.notifier).state =
                double.tryParse(value) ?? 0;
          },
        ),

        const SizedBox(height: 20),

        /// Bedrooms
        DropdownButtonFormField<int>(
          initialValue: bedrooms,
          decoration: const InputDecoration(
            labelText: 'Bedrooms',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.bed_outlined),
          ),
          items: List.generate(
            10,
            (index) => DropdownMenuItem(
              value: index + 1,
              child: Text('${index + 1} Bedroom${index == 0 ? '' : 's'}'),
            ),
          ),
          onChanged: (value) {
            if (value != null) {
              ref.read(propertyBedroomsProvider.notifier).state = value;
            }
          },
        ),

        const SizedBox(height: 20),

        /// Bathrooms
        DropdownButtonFormField<int>(
          initialValue: bathrooms,
          decoration: const InputDecoration(
            labelText: 'Bathrooms',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.bathtub_outlined),
          ),
          items: List.generate(
            10,
            (index) => DropdownMenuItem(
              value: index + 1,
              child: Text('${index + 1} Bathroom${index == 0 ? '' : 's'}'),
            ),
          ),
          onChanged: (value) {
            if (value != null) {
              ref.read(propertyBathroomsProvider.notifier).state = value;
            }
          },
        ),
      ],
    );
  }
}