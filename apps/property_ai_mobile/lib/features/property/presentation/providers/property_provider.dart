import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repositories/property_repository.dart';
import '../states/property_state.dart';
import 'property_repository_provider.dart';

class PropertyNotifier extends StateNotifier<PropertyState> {
  PropertyNotifier(this._repository)
      : super(const PropertyState()) {
    loadProperties();
  }

  final PropertyRepository _repository;

  Future<void> loadProperties() async {
    state = state.copyWith(isLoading: true);

    final properties = await _repository.getProperties();

    state = state.copyWith(
      properties: properties,
      isLoading: false,
    );
  }
}

final propertyProvider =
    StateNotifierProvider<PropertyNotifier, PropertyState>(
  (ref) {
    return PropertyNotifier(
      ref.read(propertyRepositoryProvider),
    );
  },
);