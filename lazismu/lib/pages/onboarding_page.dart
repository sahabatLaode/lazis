import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';
import 'package:lazismu/widgets/onboarding_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: [
                OnboardingItem(
                  imageUrl: 'assets/image_iklan1.png',
                  title: 'Salurkan Zakat, Infaq\ndan Sodakohmu',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_iklan2.png',
                  title: 'Donasi Lebih Cepat\nDengan Lazismu',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_iklan3.png',
                  title: 'Tingkatkan Donasi\ndan Raih Surga',
                ),
              ],
              options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  initialPage: CurrentIndex,
                  onPageChanged: ((index, _) {
                    setState(() {
                      CurrentIndex = index;
                    });
                  })),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 60, right: 16),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CurrentIndex == 0 ? kYankeesColor : kYankees50Color,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60, right: 16),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CurrentIndex == 1 ? kYankeesColor : kYankees50Color,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 60),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CurrentIndex == 2 ? kYankeesColor : kYankees50Color,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24, left: 24, right: 24),
            height: 56,
            width: 366,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              style: TextButton.styleFrom(
                backgroundColor: kCrayolaColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                'Daftar',
                style: culturedStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24, left: 24, right: 24),
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
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Masuk',
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
