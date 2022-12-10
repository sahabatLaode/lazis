import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      body: Column(
        children: [
          // logo
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 40,
              top: 150,
            ),
            child: Image.asset("assets/iklan.png"),
          ),

          // Title
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: Text(
              "Perjalanan donasimu dimulai disini",
              textAlign: TextAlign.center,
              style: yankeesStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
          ),

          // Subtitle
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "Salurkan zakat, infaq dan sedekahmu.\nDengan berdonasi anda telah ikut serta dalam mengentaskan kemiskinan.",
              textAlign: TextAlign.center,
              style: yankeesStyle,
            ),
          ),

          const Spacer(),

          // Button
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/sign-in");
            },
            child: Container(
              decoration: BoxDecoration(
                color: kCrayolaColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Text(
                "Mulai",
                style: culturedStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
