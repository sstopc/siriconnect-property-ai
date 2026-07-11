import 'package:go_router/go_router.dart';

import '../../features/customer/presentation/pages/customer_page.dart';
import '../../features/dashboard/presentation/pages/home_page.dart';
import '../../features/media/presentation/pages/media_page.dart';
import '../../features/property/presentation/pages/property_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../shared/widgets/app_shell.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          final location = state.uri.path;

          int index = switch (location) {
            '/' => 0,
            '/properties' => 1,
            '/customers' => 2,
            '/media' => 3,
            '/settings' => 4,
            _ => 0,
          };

          return AppShell(
            currentIndex: index,
            onDestinationSelected: (selectedIndex) {
              switch (selectedIndex) {
                case 0:
                  context.go('/');
                  break;
                case 1:
                  context.go('/properties');
                  break;
                case 2:
                  context.go('/customers');
                  break;
                case 3:
                  context.go('/media');
                  break;
                case 4:
                  context.go('/settings');
                  break;
              }
            },
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/properties',
            builder: (context, state) => const PropertyPage(),
          ),
          GoRoute(
            path: '/customers',
            builder: (context, state) => const CustomerPage(),
          ),
          GoRoute(
            path: '/media',
            builder: (context, state) => const MediaPage(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsPage(),
          ),
        ],
      ),
    ],
  );
}