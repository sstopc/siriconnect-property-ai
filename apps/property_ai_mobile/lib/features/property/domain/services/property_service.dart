import '../entities/property.dart';
import '../repositories/property_repository.dart';

class PropertyService {
  PropertyService(this._repository);

  final PropertyRepository _repository;

  Future<List<Property>> getProperties() {
    return _repository.getProperties();
  }

  Future<Property?> getProperty(String id) {
    return _repository.getProperty(id);
  }

  Future<void> addProperty(Property property) {
    return _repository.addProperty(property);
  }

  Future<void> updateProperty(Property property) {
    return _repository.updateProperty(property);
  }

  Future<void> deleteProperty(String id) {
    return _repository.deleteProperty(id);
  }
}