import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:covid19_tracker/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const colorizeColors = [
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellowAccent,
    Colors.redAccent,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), navigateToHomePage);
  }

  void navigateToHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('icons/app_icon.png'),
            fit: BoxFit.contain,
          ),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Covid-19 Tracker',
                textAlign: TextAlign.center,
                textStyle: GoogleFonts.getFont(
                  'Kaushan Script',
                  fontSize: 45.0,
                  letterSpacing: 1.2,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w700,
                ),
                colors: colorizeColors,
              ),
            ],
            repeatForever: true,
            pause: const Duration(milliseconds: 0),
          ),
        ],
      ),
    );
  }
}
