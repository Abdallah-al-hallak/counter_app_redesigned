import 'package:bloc/bloc.dart';
import 'package:counter_app_redesigned/core/constants/strings.dart';
import 'package:counter_app_redesigned/presentation/router/router.dart';
import 'package:flutter/material.dart';

import 'core/themes/app_themes.dart';
import 'logic/debug/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.home,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
