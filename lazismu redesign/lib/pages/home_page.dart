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
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Text(
      //     'Ambulan Darurat',
      //     style: culturedStyle.copyWith(
      //       fontSize: 16,
      //       fontWeight: bold,
      //     ),
      //   ),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(12),
      //   ),
      //   icon: const Icon(Icons.local_hospital_outlined),
      //   backgroundColor: kRedColor,
      // ),
      body: ListView(
        // padding: const EdgeInsets.only(bottom: 80),
        children: [
          donasiSaya(),
          macamDonasi(),
          informasi(),
          berita(),
        ],
      ),
    );
  }

  Widget donasiSaya() {
    return Stack(
      children: [
        // BACKGROUND JINGGA
        Container(
          // width: dou,
          height: 64,
          color: kCrayolaColor,
        ),
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 24),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          height: 80,
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
              // TOTAL DONASI
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Donasi',
                    style: yankeesStyle,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '0',
                    style: crayolaStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.only(left: 36),
                width: 2,
                height: 70,
                decoration: BoxDecoration(
                  color: kYankeesColor,
                  borderRadius: BorderRadius.circular(99),
                ),
              ),

              // DONASI TERSALURKAN
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Donasi Tersalurkan',
                    style: yankeesStyle,
                  ),
                  const SizedBox(height: 6),
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
        ),
      ],
    );
  }

  Widget macamDonasi() {
    return Center(
      child: Row(
        children: [
          Column(
            children: [
              Image.asset('assets/image_zakat.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget informasi() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // TITLE
              Text(
                'Informasi',
                style: yankeesStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const Spacer(),

              // BUTTON
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kCrayolaColor,
                  padding: const EdgeInsets.all(6),
                  minimumSize: const Size(12.0, 12.0),
                  // shape: ,
                ),
                child: Text(
                  'Lihat semua',
                  style: culturedStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),

          // ISI
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // INFORMASI KEGIATAN
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/kegiatan');
                              },
                              icon: Image.asset('assets/image_kegiatan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Kegiatan',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/kegiatan');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
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
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/layanan');
                              },
                              icon: Image.asset('assets/image_layanan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Layanan',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/layanan');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
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
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/asnaf');
                              },
                              icon: Image.asset('assets/image_asnaf.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Asnaf',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/asnaf');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget berita() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // TITLE
              Text(
                'Berita',
                style: yankeesStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const Spacer(),

              // BUTTON
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kCrayolaColor,
                  padding: const EdgeInsets.all(6),
                  minimumSize: const Size(12.0, 12.0),
                  // shape: ,
                ),
                child: Text(
                  'Lihat semua',
                  style: culturedStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),

          // ISI
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // INFORMASI KEGIATAN
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/kegiatan');
                              },
                              icon: Image.asset('assets/image_kegiatan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Kegiatan',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/kegiatan');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
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
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/layanan');
                              },
                              icon: Image.asset('assets/image_layanan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Layanan',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/layanan');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
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
                      width: 180,
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
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 114,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/asnaf');
                              },
                              icon: Image.asset('assets/image_asnaf.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Asnaf',
                              style: yankeesStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 120, top: 101),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/asnaf');
                              },
                              icon: const Icon(Icons.arrow_right_rounded),
                              iconSize: 48,
                              color: kCrayolaColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
