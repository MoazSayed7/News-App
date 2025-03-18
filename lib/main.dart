import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core/assets/svg_assets.dart';
import 'core/routers/app_router.dart';
import 'news_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
    ScreenUtil.ensureScreenSize(),
    preloadSVGs([SvgAssets.backButton, SvgAssets.heart]),
  ]);
  runApp(NewsApp(appRouter: AppRouter()));
}

Future<void> preloadSVGs(List<String> svgPaths) async {
  for (final path in svgPaths) {
    final loader = SvgAssetLoader(path);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}
