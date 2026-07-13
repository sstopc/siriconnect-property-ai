import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/property_sort.dart';

final propertySortProvider =
    StateProvider<PropertySort>((ref) {
  return PropertySort.newest;
});