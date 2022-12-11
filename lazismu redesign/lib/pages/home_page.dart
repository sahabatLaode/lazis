import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,

      // Tombol ambulan darurat
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Ambulan Darurat',
          style: culturedStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        icon: Icon(Icons.local_hospital_outlined),
        backgroundColor: kRedColor,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 80),
        children: [
          donasiSaya(),
        ],
      ),
    );
  }

  Widget donasiSaya() {
    return Stack(
      children: [
        Container(
          // width: dou,
          height: 94,
          color: kCrayolaColor,
        ),
        SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            height: 80,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Icon donasi
                    Container(
                      margin: EdgeInsets.only(right: 14),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99),
                        color: kLavenderBlushColor,
                      ),
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: kCrayolaColor,
                      ),
                    ),
                    // Jumlah donasi
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Donasi saya',
                          style: yankeesStyle,
                        ),
                        SizedBox(height: 6),
                        Text(
                          '0',
                          style: crayolaStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    // color: kCrayolaColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: kCrayolaColor,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_rounded,
                      color: kCrayolaColor,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
