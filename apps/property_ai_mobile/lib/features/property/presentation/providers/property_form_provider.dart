import 'package:flutter_riverpod/flutter_riverpod.dart';

final propertyTitleProvider = StateProvider<String>((ref) => '');

final propertyDescriptionProvider = StateProvider<String>((ref) => '');

final propertyPriceProvider = StateProvider<double>((ref) => 0);

final propertyBedroomsProvider = StateProvider<int>((ref) => 1);

final propertyBathroomsProvider = StateProvider<int>((ref) => 1);