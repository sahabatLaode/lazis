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
          informasi(),
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
            margin: EdgeInsets.only(left: 24, right: 24, top: 24),
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

  Widget informasi() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // INFORMASI KEGIATAN
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: kLavenderBlushColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 124,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/kegiatan');
                        },
                        icon: Image.asset('assets/image_kegiatan.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 122),
                      child: Text(
                        'Kegiatan',
                        style: yankeesStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 104, top: 102),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/kegiatan');
                        },
                        icon: Icon(Icons.arrow_right_rounded),
                        iconSize: 48,
                        color: kYankeesColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // INFORMASI LAYANAN
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: kLavenderBlushColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 124,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/layanan');
                        },
                        icon: Image.asset('assets/image_layanan.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 122),
                      child: Text(
                        'Layanan',
                        style: yankeesStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 104, top: 102),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/layanan');
                        },
                        icon: Icon(Icons.arrow_right_rounded),
                        iconSize: 48,
                        color: kYankeesColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // INFORMASI ASNAF
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: kLavenderBlushColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 124,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/asnaf');
                        },
                        icon: Image.asset('assets/image_asnaf.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14, top: 122),
                      child: Text(
                        'Asnaf',
                        style: yankeesStyle.copyWith(
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 104, top: 102),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/asnaf');
                        },
                        icon: Icon(Icons.arrow_right_rounded),
                        iconSize: 48,
                        color: kYankeesColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
