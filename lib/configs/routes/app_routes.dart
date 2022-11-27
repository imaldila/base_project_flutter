import 'dart:developer';

import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('This is route: ${settings.name}');

    switch (settings.name) {
      // case Routes.onboarding:
      //   return MaterialPageRoute(builder: (context) => const OnBoardingView());
      // case Routes.registration:
      //   return MaterialPageRoute(
      //       builder: (context) => const RegistrationView());
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
