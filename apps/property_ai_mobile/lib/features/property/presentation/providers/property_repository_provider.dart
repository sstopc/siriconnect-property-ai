import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/mock_property_repository.dart';
import '../../domain/repositories/property_repository.dart';

final propertyRepositoryProvider = Provider<PropertyRepository>((ref) {
  return MockPropertyRepository();
});