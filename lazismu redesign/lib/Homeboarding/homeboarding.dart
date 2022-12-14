import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Homeboarding extends StatefulWidget {
  const Homeboarding({super.key});

  @override
  State<Homeboarding> createState() => _HomeboardingState();
}

class _HomeboardingState extends State<Homeboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        backgroundColor: kCulturedColor,
        automaticallyImplyLeading: false,
        elevation: 0,
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
              child: Image.asset("assets/images/image_homeboarding.png"),
            ),

            // JUDUL
            Padding(
              padding: const EdgeInsets.only(
                bottom: 24,
              ),
              child: Text(
                "Donasimu adalah hadiah untuk lainnya",
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
                left: 16,
                right: 16,
              ),
              child: Text(
                "Dengan berdonasi, anda telah ikut serta dalam mendorong keadilan sosial, pembangunan manusia dan ikut dalam mengentaskan kemiskinan.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                ),
              ),
            ),

            const Spacer(),

            // TOMBOL MASUK
            SizedBox(
              width: double.infinity,
              height: 56,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/navbar',
                  );
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
                  'Mulai',
                  style: TextStyle(
                    color: kCulturedColor,
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
