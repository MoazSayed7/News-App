import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routers/app_router.dart';
import 'core/routers/routes.dart';
import 'core/theme/colors.dart';

class NewsApp extends StatelessWidget {
  final AppRouter appRouter;

  const NewsApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 813),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News App',
          themeMode: ThemeMode.dark,
          initialRoute: Routes.homeScreen,
          theme: ThemeData(
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: ColorsManager.limePastel
            )
          ),
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
