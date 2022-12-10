import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const OnboardingItem({
    super.key,
    required this.imageUrl,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 42, left: 24),
          width: 81,
          height: 53.61,
          child: Image.asset(
            'assets/logo_lazismu.png',
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 140),
          width: double.infinity,
          height: 196,
          child: Image.asset(
            imageUrl,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24, top: 36),
          child: Text(
            title,
            style: yankeesStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 12, left: 24, right: 4),
              width: 128,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kYankeesColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 24,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kYankeesColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
