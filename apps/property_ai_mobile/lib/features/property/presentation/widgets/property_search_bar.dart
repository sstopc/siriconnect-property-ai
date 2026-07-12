import 'package:flutter/material.dart';

class PropertySearchBar extends StatelessWidget {
  const PropertySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      hintText: 'Search properties...',
      leading: Icon(Icons.search),
    );
  }
}