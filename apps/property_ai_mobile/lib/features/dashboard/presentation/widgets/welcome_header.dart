import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning 👋',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        Text('Lucky', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 4),
        Text(
          'Welcome to SiriConnect',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'Your AI-powered Real Estate Business Assistant',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
