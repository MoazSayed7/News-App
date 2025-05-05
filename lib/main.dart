import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core/assets/svg_assets.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/helpers/home_widget.dart';
import 'core/helpers/shared_pref_helper.dart';
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
  firstTime = await SharedPrefHelper.getBool('firstTime') ?? true;

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
