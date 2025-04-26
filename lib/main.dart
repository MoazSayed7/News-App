import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/assets/svg_assets.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/home_widget.dart';
import 'core/routers/app_router.dart';
import 'core/services/hive_service.dart';
import 'news_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  Bloc.observer = MyBlocObserver();
  await Future.wait([
    // Initialize Hive
    HiveService().init(),
    HomeWidgetHelper.init(),
    setupGetIt(),
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
    ScreenUtil.ensureScreenSize(),
    preloadSVGs([SvgAssets.backButton, SvgAssets.heart]),
  ]);

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  firstTime = sharedPreferences.getBool('firstTime') ?? true;
  if (sharedPreferences.getStringList(HomeWidgetHelper.dataKey) == null) {
    await HomeWidgetHelper.saveImagesForWidget([
      'https://imgs.search.brave.com/rqRrzfuZDnVZPr5_UCc0CNlj7iHV8cCHWW9xzTwRMCE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMwLmdpdmVtZXNw/b3J0aW1hZ2VzLmNv/bS93b3JkcHJlc3Mv/d3AtY29udGVudC91/cGxvYWRzLzIwMjUv/MDEvbWl4Y29sbGFn/ZS0yOC1qYW4tMjAy/NS0wMy0wMS1wbS0y/OTgxLmpwZw',
      'https://avatars.githubusercontent.com/u/75115429?v=4',
      'https://www.flutter.com/media/snyh4qjb/image-17.png',
      'https://images.prestigeonline.com/wp-content/uploads/sites/8/2022/06/01180207/lsa-hero-2-1600x900.jpeg',
    ]);
    await HomeWidgetHelper.saveToHomeWidget(
      sharedPreferences.getStringList(HomeWidgetHelper.dataKey)!,
    );
  }

  runApp(NewsApp(appRouter: AppRouter()));
}

bool firstTime = true;
Future<void> preloadSVGs(List<String> svgPaths) async {
  for (final path in svgPaths) {
    final loader = SvgAssetLoader(path);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}
