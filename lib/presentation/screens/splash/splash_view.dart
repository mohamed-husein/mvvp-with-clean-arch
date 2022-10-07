import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_colors.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/assets_manager.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDeley), (() => _goNext()));
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
   
    super.initState();
     _startDelay();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: const Center(
        child: Image(
          image: AssetImage(
            ImageAssets.spalshLogo,
          ),
        ),
      ),
    );
  }
}
