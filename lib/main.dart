import 'package:ahmed_portfolio/utils/theme_manager.dart';
import 'package:ahmed_portfolio/values/values.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:url_strategy/url_strategy.dart';

import 'modules/home/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp(
        title: Strings.APP_NAME,
        theme: ThemeManager.lightThemeData,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
