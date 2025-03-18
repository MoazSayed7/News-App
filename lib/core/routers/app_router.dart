import 'package:flutter/material.dart';
import '../../features/details/ui/details_screen.dart';

import '../../features/home/ui/home_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => DetailsScreen());

      default:
        return null;
    }
  }
}
