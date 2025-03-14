import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routers/routes.dart';
import 'news_app.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(NewsApp(appRouter: AppRouter()));
}
