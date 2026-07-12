import 'package:go_router/go_router.dart';

import '../presentation/pages/property_list_page.dart';

class PropertyRoutes {
  PropertyRoutes._();

  static const String propertyList = '/properties';

  static final routes = <GoRoute>[
    GoRoute(
      path: propertyList,
      builder: (context, state) => const PropertyListPage(),
    ),
  ];
}