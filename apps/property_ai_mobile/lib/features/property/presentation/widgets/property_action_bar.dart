import 'package:flutter/material.dart';

class PropertyActionBar extends StatelessWidget {
  const PropertyActionBar({super.key});

  Widget button(
    IconData icon,
    String label,
  ) {
    return Expanded(
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        button(Icons.favorite_border, 'Favorite'),
        button(Icons.call_outlined, 'Call'),
        button(Icons.chat_outlined, 'WhatsApp'),
        button(Icons.share_outlined, 'Share'),
        button(Icons.auto_awesome_outlined, 'AI Poster'),
      ],
    );
  }
}