import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/property.dart';
import '../../domain/entities/property_sort.dart';
import 'property_list_provider.dart';
import 'property_search_provider.dart';
import 'property_sort_provider.dart';
import 'property_status_provider.dart';

final filteredPropertyProvider =
    Provider<AsyncValue<List<Property>>>((ref) {
  final properties = ref.watch(propertyListProvider);

  final search =
      ref.watch(propertySearchProvider).trim().toLowerCase();

  final selectedStatus =
      ref.watch(propertyStatusProvider);

  final sort =
      ref.watch(propertySortProvider);

  return properties.whenData((items) {
    final filteredItems = items.where((property) {
      final matchesSearch =
          search.isEmpty ||
          property.title.toLowerCase().contains(search) ||
          property.location.toLowerCase().contains(search);

      final matchesStatus =
          selectedStatus == null ||
          property.status == selectedStatus;

      return matchesSearch && matchesStatus;
    }).toList();

    switch (sort) {
      case PropertySort.newest:
        filteredItems.sort(
          (a, b) => b.id.compareTo(a.id),
        );
        break;

      case PropertySort.priceLowToHigh:
        filteredItems.sort(
          (a, b) => a.price.compareTo(b.price),
        );
        break;

      case PropertySort.priceHighToLow:
        filteredItems.sort(
          (a, b) => b.price.compareTo(a.price),
        );
        break;

      case PropertySort.area:
        filteredItems.sort(
          (a, b) => b.areaSqft.compareTo(a.areaSqft),
        );
        break;

      case PropertySort.bedrooms:
        filteredItems.sort(
          (a, b) => b.bedrooms.compareTo(a.bedrooms),
        );
        break;
    }

    return filteredItems;
  });
});