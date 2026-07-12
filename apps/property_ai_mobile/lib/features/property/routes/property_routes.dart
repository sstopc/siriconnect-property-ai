import 'package:go_router/go_router.dart';

import '../presentation/pages/add_property_page.dart';
import '../presentation/pages/property_list_page.dart';

class PropertyRoutes {
  PropertyRoutes._();

  static const propertyList = '/properties';

  static const addProperty = '/properties/add';

  static final routes = <GoRoute>[
    GoRoute(
      path: propertyList,
      builder: (context, state) => const PropertyListPage(),
    ),
    GoRoute(
      path: addProperty,
      builder: (context, state) => const AddPropertyPage(),
    ),
  ];
}