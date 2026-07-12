import '../../domain/entities/property.dart';

final mockProperties = [
  Property(
    id: 'P001',
    title: '2 BHK Apartment',
    description: 'East Facing Apartment',
    type: PropertyType.apartment,
    status: PropertyStatus.available,
    price: 7500000,
    location: 'Miyapur, Hyderabad',
    bedrooms: 2,
    bathrooms: 2,
    areaSqft: 1150,
    images: [],
    createdAt: DateTime.now(),
  ),
];
