import '../entities/property.dart';

abstract class PropertyRepository {
  Future<List<Property>> getProperties();

  Future<Property?> getProperty(String id);

  Future<void> addProperty(Property property);

  Future<void> updateProperty(Property property);

  Future<void> deleteProperty(String id);
}
