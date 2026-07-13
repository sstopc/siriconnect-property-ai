import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/property.dart';
import 'property_repository_provider.dart';

final propertyListProvider = FutureProvider<List<Property>>((ref) async {
  final repository = ref.watch(propertyRepositoryProvider);

  return repository.getProperties();
});