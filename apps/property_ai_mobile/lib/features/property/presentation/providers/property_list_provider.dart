import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/property.dart';
import 'property_service_provider.dart';

final propertyListProvider = FutureProvider<List<Property>>((ref) async {
  final service = ref.watch(propertyServiceProvider);

  return service.getProperties();
});