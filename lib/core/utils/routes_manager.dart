import 'package:flutter/material.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/core/utils/app_constants.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/forgot_password/forgot_password_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/login/login_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/main/main_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/onboard/view/onboard_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/register/register_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/splash/splash_view.dart';
import 'package:tut_app_mvvm_design_pattern/presentation/screens/store_details/store_details_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.noRouteFound),
        ),
        body: const Center(child: Text(AppConstants.noRouteFound)),
      ),
    );
  }
}
