import 'package:flutter/material.dart';
import 'package:fruit_app/theme.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrightGrayColor,
      body: Column(
        children: [
          Text(
            'Halo',
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
