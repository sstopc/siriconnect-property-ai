import '../../domain/entities/property.dart';
import '../../domain/repositories/property_repository.dart';

class MockPropertyRepository implements PropertyRepository {
  final List<Property> _properties = [];

  @override
  Future<void> addProperty(Property property) async {
    _properties.add(property);
  }

  @override
  Future<void> deleteProperty(String id) async {
    _properties.removeWhere((e) => e.id == id);
  }

  @override
  Future<Property?> getProperty(String id) async {
    try {
      return _properties.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<List<Property>> getProperties() async {
    return List.unmodifiable(_properties);
  }

  @override
  Future<void> updateProperty(Property property) async {
    final index = _properties.indexWhere((e) => e.id == property.id);

    if (index != -1) {
      _properties[index] = property;
    }
  }
}
