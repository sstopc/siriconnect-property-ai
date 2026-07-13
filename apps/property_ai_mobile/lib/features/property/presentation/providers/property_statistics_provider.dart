import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/property.dart';
import '../models/property_statistics.dart';
import 'property_list_provider.dart';

final propertyStatisticsProvider =
    Provider<AsyncValue<PropertyStatistics>>((ref) {
  final properties = ref.watch(propertyListProvider);

  return properties.whenData((items) {
    return PropertyStatistics(
      total: items.length,
      available: items
          .where((e) => e.status == PropertyStatus.available)
          .length,
      sold: items
          .where((e) => e.status == PropertyStatus.sold)
          .length,
      rented: items
          .where((e) => e.status == PropertyStatus.rented)
          .length,
    );
  });
});