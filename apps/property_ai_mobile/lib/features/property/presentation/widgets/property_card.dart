import 'package:flutter/material.dart';

import '../../domain/entities/property.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    super.key,
    required this.property,
  });

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              property.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),

            Text(property.location),

            const SizedBox(height: 8),

            Text(
              '₹ ${property.price.toStringAsFixed(0)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                Text('${property.bedrooms} Bed'),
                const SizedBox(width: 12),
                Text('${property.bathrooms} Bath'),
                const SizedBox(width: 12),
                Text('${property.areaSqft} sqft'),
              ],
            ),

            const SizedBox(height: 12),

            Chip(
              label: Text(
                property.status.name.toUpperCase(),
              ),
            ),

            const Divider(),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Icon(Icons.favorite_border),
                Icon(Icons.call_outlined),
                Icon(Icons.chat_outlined),
                Icon(Icons.share_outlined),
                Icon(Icons.auto_awesome_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}