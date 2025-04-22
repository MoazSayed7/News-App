import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/logic/cubit/network_cubit.dart';
import 'main.dart';

import 'core/routers/app_router.dart';
import 'core/routers/routes.dart';
import 'core/theme/colors.dart';

class NewsApp extends StatelessWidget {
  final AppRouter appRouter;

  const NewsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NetworkCubit(),
      child: ScreenUtilInit(
        designSize: const Size(375, 813),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            navigatorKey: GlobalKey<NavigatorState>(),
            debugShowCheckedModeBanner: false,
            title: 'News App',
            themeMode: ThemeMode.dark,
            initialRoute:
                firstTime ? Routes.onBoardingScreen : Routes.homeScreen,
            theme: ThemeData(
              scaffoldBackgroundColor: ColorsManager.deepOliveBlack,
              progressIndicatorTheme: ProgressIndicatorThemeData(
                color: ColorsManager.limePastel,
              ),
            ),
            onGenerateRoute: appRouter.generateRoute,
          );
        },
      ),
    );
  }
}
