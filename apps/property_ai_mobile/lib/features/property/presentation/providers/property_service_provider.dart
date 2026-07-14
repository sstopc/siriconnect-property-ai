import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/services/property_service.dart';
import 'property_repository_provider.dart';

final propertyServiceProvider = Provider<PropertyService>((ref) {
  final repository = ref.watch(propertyRepositoryProvider);

  return PropertyService(repository);
});