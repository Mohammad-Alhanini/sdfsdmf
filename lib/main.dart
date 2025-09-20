import 'package:flutter/material.dart';
import 'package:grocery_app_starter/auth/intro.dart';
import 'package:grocery_app_starter/auth/login.dart';
import 'package:grocery_app_starter/auth/splash.dart';
import 'package:grocery_app_starter/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/intro': (context) => Intro(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}
