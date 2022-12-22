import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class HomeboardingPage extends StatefulWidget {
  const HomeboardingPage({super.key});

  @override
  State<HomeboardingPage> createState() => _HomeboardingPageState();
}

class _HomeboardingPageState extends State<HomeboardingPage> {
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
              child: Image.asset("assets/image_iklan4.png"),
            ),

            // JUDUL
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                "Donasimu adalah hadiah untuk lainnya",
                textAlign: TextAlign.center,
                style: yankeesStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                ),
              ),
            ),

            // SUB JUDUL
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "Dengan berdonasi, anda telah ikut serta dalam mendorong keadilan sosial, pembangunan manusia dan ikut dalam mengentaskan kemiskinan.",
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
                  Navigator.pushReplacementNamed(context, '/navbar');
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: kCrayolaColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Mulai',
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
      ),
    );
  }
}
