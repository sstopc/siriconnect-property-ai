import '../../domain/entities/property.dart';

class PropertyState {
  const PropertyState({
    this.properties = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  final List<Property> properties;
  final bool isLoading;
  final String? errorMessage;

  PropertyState copyWith({
    List<Property>? properties,
    bool? isLoading,
    String? errorMessage,
  }) {
    return PropertyState(
      properties: properties ?? this.properties,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}