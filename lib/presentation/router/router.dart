import 'package:counter_app_redesigned/core/constants/strings.dart';
import 'package:counter_app_redesigned/presentation/screens/counter_screen/home_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String home = '/';
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => HomeScreen(
                  title: Strings.appTitle,
                ));
    }
  }
}
