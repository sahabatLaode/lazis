import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class HomeboardingPage extends StatelessWidget {
  const HomeboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 42, left: 24),
            width: 81,
            height: 53.61,
            child: Image.asset('assets/logo_lazismu.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 147.39),
            width: double.infinity,
            height: 196,
            child: Image.asset('assets/image_iklan4.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 32, left: 24),
            child: Text(
              "Donasimu adalah hadiah\nuntuk lainnya",
              style: yankeesStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 24, right: 24),
            width: 366,
            child: Text(
              "Dengan berdonasi, anda telah ikut serta dalam mendorong keadilan sosial, pembangunan manusia dan ikut dalam mengentaskan kemiskinan.",
              style: yankeesStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 36, left: 24, right: 24),
            height: 56,
            width: 366,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kCrayolaColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                'Mulai donasi pertamamu sekarang',
                style: culturedStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 24, right: 24),
            height: 56,
            width: 366,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: kCrayolaColor,
                width: 2,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/navbar');
              },
              child: Text(
                'Donasi nanti',
                style: culturedStyle.copyWith(
                  color: kCrayolaColor,
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
