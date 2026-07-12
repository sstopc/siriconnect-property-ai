import 'package:flutter/material.dart';

import '../../../../core/widgets/info_tile.dart';

class OwnerInformationCard extends StatelessWidget {
  const OwnerInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 32,
          child: Icon(Icons.person, size: 36),
        ),

        SizedBox(height: 16),

        InfoTile(
          icon: Icons.person_outline,
          label: 'Owner',
          value: 'Ramesh Kumar',
        ),

        InfoTile(
          icon: Icons.phone_outlined,
          label: 'Phone',
          value: '+91 9876543210',
        ),

        InfoTile(
          icon: Icons.email_outlined,
          label: 'Email',
          value: 'ramesh@example.com',
        ),

        InfoTile(
          icon: Icons.schedule_outlined,
          label: 'Available',
          value: '9:00 AM - 7:00 PM',
        ),
      ],
    );
  }
}