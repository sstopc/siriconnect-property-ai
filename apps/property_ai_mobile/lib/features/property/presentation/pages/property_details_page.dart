import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/widgets/section_card.dart';
import '../widgets/property_header.dart';
import '../widgets/property_specifications.dart';

class PropertyDetailsPage extends StatelessWidget {
  const PropertyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
      ),
      body: const SingleChildScrollView(
        padding:  EdgeInsets.all(
          AppSpacing.md,
        ),
        child: Column(
          children: [
             PropertyHeader(),

             SizedBox(
              height: AppSpacing.xl,
            ),

             SectionCard(
              title: 'Property Information',
              child: PropertySpecifications(),
            ),

             SectionCard(
              title: 'Owner Information',
              child: Text(
                'Owner details will be added in Package 4D.3',
              ),
            ),

             SectionCard(
              title: 'Actions',
              child: Text(
                'Quick actions will be added in Package 4D.4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}