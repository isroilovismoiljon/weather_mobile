import 'package:go_router/go_router.dart';
import 'package:weather_app/core/routing/routes.dart';
import 'package:weather_app/features/saved/pages/saved_page.dart';

import '../../features/home/pages/home_page.dart';

GoRouter router = GoRouter(
  initialLocation: Routes.home,
  routes: <RouteBase>[
    GoRoute(path: Routes.home, builder: (context, state) => HomePage(image: '',)),
    GoRoute(path: Routes.saved, builder: (context, state) => SavedPage()),

  ],
);
