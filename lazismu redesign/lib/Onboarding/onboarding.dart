import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        backgroundColor: kCulturedColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Image.asset(
          'assets/logos/logo_lazismu.png',
          width: 72,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            // ILUSTRASI
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 40,
                top: 80,
              ),
              child: Image.asset("assets/images/image_onboarding.png"),
            ),

            // JUDUL
            Padding(
              padding: const EdgeInsets.only(
                bottom: 24,
              ),
              child: Text(
                "Selamat datang di lazismu banguntapan selatan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                  fontSize: 28,
                  fontWeight: bold,
                ),
              ),
            ),

            // SUB JUDUL
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Text(
                "Salurkan zakat, infaq dan sedekahmu.\nDengan berdonasi anda telah ikut serta dalam mengentaskan kemiskinan.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                ),
              ),
            ),

            const Spacer(),

            // TOMBOL MASUK
            Container(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              width: double.infinity,
              height: 56,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                style: TextButton.styleFrom(
                  backgroundColor: kCrayolaColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                  ),
                ),
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    color: kCulturedColor,
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),

            // TOMBOL DAFTAR
            SizedBox(
              width: double.infinity,
              height: 56,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/sign-up',
                  );
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                    side: BorderSide(
                      color: kCrayolaColor,
                    ),
                  ),
                ),
                child: Text(
                  'Daftar',
                  style: TextStyle(
                    color: kCrayolaColor,
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
