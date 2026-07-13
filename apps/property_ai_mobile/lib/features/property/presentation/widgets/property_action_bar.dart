import 'package:flutter/material.dart';

import '../../../../core/widgets/action_button.dart';
import '../../../../core/widgets/action_grid.dart';

class PropertyActionBar extends StatelessWidget {
  const PropertyActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionGrid(
      children: [
        ActionButton(
          icon: Icons.favorite_border,
          label: 'Favorite',
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.call_outlined,
          label: 'Call',
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.chat_outlined,
          label: 'WhatsApp',
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.share_outlined,
          label: 'Share',
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.auto_awesome_outlined,
          label: 'AI Poster',
          onPressed: () {},
        ),
      ],
    );
  }
}
