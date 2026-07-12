import 'package:flutter/material.dart';

import '../../../../core/widgets/info_tile.dart';

class PropertySpecifications extends StatelessWidget {
  const PropertySpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoTile(
          icon: Icons.bed_outlined,
          label: 'Bedrooms',
          value: '2',
        ),

        InfoTile(
          icon: Icons.bathtub_outlined,
          label: 'Bathrooms',
          value: '2',
        ),

        InfoTile(
          icon: Icons.square_foot_outlined,
          label: 'Area',
          value: '1150 sqft',
        ),

        InfoTile(
          icon: Icons.apartment_outlined,
          label: 'Floor',
          value: '3',
        ),

        InfoTile(
          icon: Icons.explore_outlined,
          label: 'Facing',
          value: 'East',
        ),

        InfoTile(
          icon: Icons.local_parking_outlined,
          label: 'Parking',
          value: 'Yes',
        ),

        InfoTile(
          icon: Icons.home_work_outlined,
          label: 'Property Type',
          value: 'Apartment',
        ),

        InfoTile(
          icon: Icons.calendar_today_outlined,
          label: 'Age',
          value: '2 Years',
        ),
      ],
    );
  }
}