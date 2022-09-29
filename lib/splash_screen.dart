import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/welcome_screen_vc/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () =>
            Navigator.pushReplacementNamed(context, '/welcome_screen'));
           /* Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const WelcomeScreen())));*/

    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/inapp/splash_screen_logo.gif'),
          fit: BoxFit.fill),
    )));
  }
}
