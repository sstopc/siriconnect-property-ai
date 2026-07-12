import 'package:flutter/material.dart';

class PropertySpecifications extends StatelessWidget {
  const PropertySpecifications({super.key});

  Widget item(
    BuildContext context,
    IconData icon,
    String title,
    String value,
  ) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
          child: Column(
            children: [
              Icon(icon),
              const SizedBox(height: 8),
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            item(context, Icons.bed, 'Bedrooms', '2'),
            item(context, Icons.bathtub, 'Bathrooms', '2'),
            item(context, Icons.square_foot, 'Area', '1150'),
          ],
        ),
        Row(
          children: [
            item(context, Icons.apartment, 'Floor', '3'),
            item(context, Icons.explore, 'Facing', 'East'),
            item(context, Icons.local_parking, 'Parking', 'Yes'),
          ],
        ),
      ],
    );
  }
}