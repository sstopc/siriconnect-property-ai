import 'package:flutter/material.dart';

class PropertyPage extends StatelessWidget {
  const PropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Properties',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}