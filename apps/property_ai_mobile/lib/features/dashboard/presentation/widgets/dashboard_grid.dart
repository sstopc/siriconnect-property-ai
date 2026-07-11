import 'package:flutter/material.dart';

import '../../../../core/widgets/summary_card.dart';
import '../../domain/entities/dashboard_summary.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key, required this.summary});

  final DashboardSummary summary;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 2,
      children: [
        SummaryCard(
          title: 'Properties',
          value: '${summary.propertyCount}',
          icon: Icons.apartment,
        ),
        SummaryCard(
          title: 'Customers',
          value: '${summary.customerCount}',
          icon: Icons.people,
        ),
        SummaryCard(
          title: 'Follow-ups',
          value: '${summary.followUpCount}',
          icon: Icons.schedule,
        ),
        SummaryCard(
          title: 'Media',
          value: '${summary.mediaCount}',
          icon: Icons.movie_creation,
        ),
      ],
    );
  }
}
