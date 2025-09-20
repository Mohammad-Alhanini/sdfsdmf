import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/intro');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2382AA),
      body: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundColor: Color(0xff2E99C7),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/png/Vector.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
