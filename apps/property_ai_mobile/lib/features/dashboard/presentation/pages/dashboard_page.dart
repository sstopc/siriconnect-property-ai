import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('SiriConnect'),
      ),
      body: Center(
        child: Text(
          'Property AI',
          style: theme.textTheme.headlineMedium,
        ),
      ),
    );
  }
}