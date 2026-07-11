import 'package:flutter/material.dart';

import '../../../../core/widgets/app_page.dart';
import '../../../../core/widgets/empty_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      title: 'SiriConnect',
      child: EmptyState(
        message: 'Welcome to SiriConnect Property AI',
        icon: Icons.home_work_outlined,
      ),
    );
  }
}