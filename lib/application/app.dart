import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_sizes.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/routes_manager.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/theme_manager.dart';

import '../core/global/theme/theme_data/light.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSizes.appWidth, AppSizes.appHeight),
      minTextAdapt: false,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashRoute,
          theme: getThemeDataLight,

        );
      },

    );
  }
}