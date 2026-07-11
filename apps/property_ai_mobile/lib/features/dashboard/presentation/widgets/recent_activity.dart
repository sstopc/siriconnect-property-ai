import 'package:flutter/material.dart';

import '../../../../core/widgets/empty_state.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmptyState(message: 'No activity yet.', icon: Icons.history);
  }
}
