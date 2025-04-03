import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/details/ui/details_screen.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/onBoarding/ui/onboarding_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (context) =>
                        HomeCubit(getIt())
                          ..getBanners()
                          ..getCategories(),
                child: HomeScreen(),
              ),
        );

      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => DetailsScreen());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());

      default:
        return null;
    }
  }
}
