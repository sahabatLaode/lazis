import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_app/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightGrayColor,
      body: Center(
        child: Image.asset(
          'assets/logos/logo_lazismu.png',
          width: 204,
          height: 135,
        ),
      ),
    );
  }
}
