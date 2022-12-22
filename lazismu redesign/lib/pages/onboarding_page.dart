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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            // LOGO LAZISMU
            SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo_lazismu.png',
                    width: 72,
                  ),
                ],
              ),
            ),

            // ILUSTRASI
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 40,
                top: 80,
              ),
              child: Image.asset("assets/iklan.png"),
            ),

            // JUDUL
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                "Selamat datang di lazismu banguntapan selatan",
                textAlign: TextAlign.center,
                style: yankeesStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                ),
              ),
            ),

            // SUB JUDUL
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Text(
                "Salurkan zakat, infaq dan sedekahmu.\nDengan berdonasi anda telah ikut serta dalam mengentaskan kemiskinan.",
                textAlign: TextAlign.center,
                style: yankeesStyle,
              ),
            ),

            const Spacer(),

            // TOMBOL MASUK
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: kCrayolaColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Masuk',
                  style: culturedStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // TOMBOL DAFTAR
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up-new');
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                    side: BorderSide(
                      color: kCrayolaColor,
                    ),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: crayolaStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
