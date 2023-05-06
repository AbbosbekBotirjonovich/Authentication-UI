import 'package:authentication_ui/core/route/app_route.dart';
import 'package:authentication_ui/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'core/route/app_route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication UI',
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      initialRoute: AppRouteName.login,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
