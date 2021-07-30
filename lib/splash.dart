import 'dart:async';
import 'package:demo_project/onboarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboarding())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  child: Image.asset(
                    'images/digiq2.jpg',
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                child: Image.asset(
                  'images/Vector2.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
