import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class UserDonasi extends StatelessWidget {
  const UserDonasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kCulturedColor,
        title: Text(
          'Donasi',
          style: yankeesStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_donasi.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 70),
            padding: EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
            width: double.infinity,
            height: 86,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: kCrayolaColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.card_giftcard_outlined,
                        color: kCulturedColor,
                      ),
                    ),
                    Text(
                      'Zakat',
                      style: yankeesStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kYankeesColor,
                    size: 32.0,
                  ),
                  padding: EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 24),
            padding: EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
            width: double.infinity,
            height: 86,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 24),
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: kCrayolaColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.card_giftcard_outlined,
                        color: kCulturedColor,
                      ),
                    ),
                    Text(
                      'Infaq/Sodakoh',
                      style: yankeesStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kYankeesColor,
                    size: 32.0,
                  ),
                  padding: EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
