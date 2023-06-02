import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lg_gesture_and_voice_control/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FirstPage()
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'LG Gesture & Voice Control',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
