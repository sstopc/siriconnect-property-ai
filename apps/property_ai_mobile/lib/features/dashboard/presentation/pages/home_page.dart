import 'package:flutter/material.dart';

import '../../../../core/widgets/app_gap.dart';
import '../../../../core/widgets/app_page.dart';
import '../../../../core/widgets/app_section.dart';
import '../providers/dashboard_provider.dart';
import '../widgets/dashboard_grid.dart';
import '../widgets/quick_action_card.dart';
import '../widgets/recent_activity.dart';
import '../widgets/welcome_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'SiriConnect',
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),

            AppGap.lg,

            AppSection(
              title: 'Today\'s Summary',
              child: DashboardGrid(summary: dashboardSummary),
            ),

            AppGap.lg,

            AppSection(
              title: 'Quick Actions',
              child: Column(
                children: [
                  QuickActionCard(
                    icon: Icons.add_home,
                    title: 'Add Property',
                    onTap: () {},
                  ),
                  AppGap.sm,
                  QuickActionCard(
                    icon: Icons.person_add,
                    title: 'Add Customer',
                    onTap: () {},
                  ),
                  AppGap.sm,
                  QuickActionCard(
                    icon: Icons.image,
                    title: 'Create AI Poster',
                    onTap: () {},
                  ),
                  AppGap.sm,
                  QuickActionCard(
                    icon: Icons.movie_creation,
                    title: 'Create AI Reel',
                    onTap: () {},
                  ),
                ],
              ),
            ),

            AppGap.lg,

            const AppSection(title: 'Recent Activity', child: RecentActivity()),
          ],
        ),
      ),
    );
  }
}
