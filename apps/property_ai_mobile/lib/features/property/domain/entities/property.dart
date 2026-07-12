enum PropertyStatus { available, sold, rented }

enum PropertyType { apartment, villa, independentHouse, plot, commercial }

class Property {
  const Property({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.status,
    required this.price,
    required this.location,
    required this.bedrooms,
    required this.bathrooms,
    required this.areaSqft,
    required this.images,
    required this.createdAt,
  });

  final String id;
  final String title;
  final String description;

  final PropertyType type;
  final PropertyStatus status;

  final double price;

  final String location;

  final int bedrooms;
  final int bathrooms;

  final double areaSqft;

  final List<String> images;

  final DateTime createdAt;
}
