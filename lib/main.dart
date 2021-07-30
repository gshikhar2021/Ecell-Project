import 'package:demo_project/Covistats.dart';
import 'package:demo_project/onboarding.dart';
import 'package:demo_project/routes.dart';
import 'package:demo_project/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Splash(),
        MyRoutes.onBoarding: (context) => Onboarding(),
        MyRoutes.coviStats: (context) => CoviStats(),
      },
    );
  }
}
