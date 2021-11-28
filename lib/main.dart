import 'package:covid19_tracker/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.0),
            ),
          ),
          elevation: 0.0,
          color: Color(0xFF98BAE7),
        ),
        primaryColor: Color(0xFF98BAE7),
      ),
      home: const SplashScreen(),
    );
  }
}
