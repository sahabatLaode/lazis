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
      body: ListView(
        padding: EdgeInsets.only(bottom: 80),
        children: [
          banner(),
          kegiatanDonasi(),
          layananAsnaf(),
        ],
      ),
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
    );
  }

  Widget banner() {
    return Container(
      width: double.infinity,
      height: 451,
      color: kCulturedColor,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 336,
            color: kCrayola70Color,
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 60),
            child: Text(
              'Kamu mau\ndonasikan apa?',
              style: yankeesStyle.copyWith(
                fontSize: 28,
                fontWeight: bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 42, left: 54),
            width: 321,
            height: 259,
            child: Image.asset(
              'assets/image_banner.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24, top: 295),
            width: double.infinity,
            height: 156,
            decoration: BoxDecoration(
              color: kLavenderBlushColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 24),
                      child: Text(
                        'Donasi Saya',
                        style: yankeesStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24, right: 24),
                      // width: double.infinity,
                      height: 12,
                      child: Image.asset(
                        'assets/logo_lazismu_oranye.png',
                      ),
                    ),
                  ],
                ),
                Stack(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 12, left: 24),
                      child: Text(
                        'Rp. 5.000.000',
                        style: crayolaStyle.copyWith(
                          fontSize: 24,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 74),
                      child: Text(
                        '27/11/2022',
                        style: yankeesStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 265, top: 32),
                      width: 80,
                      height: 78,
                      child: Image.asset(
                        'assets/logo_bunga.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget kegiatanDonasi() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24, left: 24),
          width: 160,
          height: 200,
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 124,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/layanan');
                  },
                  icon: Image.asset('assets/image_kegiatan.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 124),
                child: Text(
                  'Kegiatan',
                  style: yankeesStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 164),
                child: Text(
                  '4 kegiatan',
                  style: yankeesStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 104, top: 140),
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
        Container(
          margin: EdgeInsets.only(top: 24, right: 24),
          width: 160,
          height: 200,
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 124,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/layanan');
                  },
                  icon: Image.asset('assets/image_donasi.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 124),
                child: Text(
                  'Donasi',
                  style: yankeesStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 164),
                child: Text(
                  '2 jenis donasi',
                  style: yankeesStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 104, top: 140),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/donasi');
                  },
                  icon: Icon(Icons.arrow_right_rounded),
                  iconSize: 48,
                  color: kYankeesColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget layananAsnaf() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24, left: 24),
          width: 160,
          height: 200,
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
                margin: EdgeInsets.only(left: 14, top: 124),
                child: Text(
                  'Layanan',
                  style: yankeesStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 164),
                child: Text(
                  '3 layanan',
                  style: yankeesStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 104, top: 140),
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
        Container(
          margin: EdgeInsets.only(top: 24, right: 24),
          width: 160,
          height: 200,
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 124,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/layanan');
                  },
                  icon: Image.asset('assets/image_asnaf.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 124),
                child: Text(
                  'Asnaf',
                  style: yankeesStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, top: 164),
                child: Text(
                  '4 informasi',
                  style: yankeesStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 104, top: 140),
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
      ],
    );
  }
}
