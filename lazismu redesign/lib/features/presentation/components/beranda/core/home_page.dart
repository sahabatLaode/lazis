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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: kCrayolaColor,
        title: Image.asset(
          'assets/logos/logo_lazismu_putih.png',
          width: 84,
        ),
      ),

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
          height: 54,
          color: kCrayolaColor,
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 12,
            bottom: 24,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 18,
          ),
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
                    style: TextStyle(
                      color: kYankeesColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '0',
                    style: TextStyle(
                      color: kCrayolaColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.only(left: 36),
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
                    style: TextStyle(
                      color: kYankeesColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '0',
                    style: TextStyle(
                      color: kCrayolaColor,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // QUICK MENU ZAKAT
        Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: kLavenderBlushColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/donasi-zakat');
                },
                icon: Image.asset(
                  'assets/icons/icon_zakat.png',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Zakat',
              style: TextStyle(
                color: kYankeesColor,
                fontWeight: bold,
              ),
            ),
          ],
        ),

        // QUICK MENU INFAQ/SEDEKAH
        Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: kLavenderBlushColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/donasi-infaq');
                },
                icon: Image.asset(
                  'assets/icons/icon_infaq.png',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Infaq/Sedekah',
              style: TextStyle(
                color: kYankeesColor,
                fontWeight: bold,
              ),
            ),
          ],
        ),

        // QUICK MENU KOIN SURGA
        Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: kLavenderBlushColor,
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/permintaan-koin');
                },
                icon: Image.asset(
                  'assets/icons/icon_koin_surga.png',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Koin Surga',
              style: TextStyle(
                color: kYankeesColor,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget informasi() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // TITLE
              Text(
                'Informasi',
                style: TextStyle(
                  color: kYankeesColor,
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
                  style: TextStyle(
                    color: kCulturedColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),

          // ISI
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // INFORMASI KEGIATAN
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
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
                              icon: Image.asset(
                                  'assets/images/image_kegiatan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Kegiatan',
                              style: TextStyle(
                                color: kYankeesColor,
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
                    padding: const EdgeInsets.only(right: 6, left: 6),
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
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
                              icon: Image.asset(
                                  'assets/images/image_layanan.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Layanan',
                              style: TextStyle(
                                color: kYankeesColor,
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
                    padding: const EdgeInsets.only(right: 3, left: 12),
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
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
                              icon:
                                  Image.asset('assets/images/image_asnaf.png'),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12, top: 118),
                            child: Text(
                              'Asnaf',
                              style: TextStyle(
                                color: kYankeesColor,
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
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // TITLE
              Text(
                'Berita',
                style: TextStyle(
                  color: kYankeesColor,
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
                  style: TextStyle(
                    color: kCulturedColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),

          // ISI
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // INFORMASI KEGIATAN
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 12, left: 3, top: 3, bottom: 3),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/image_berita1.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Lazismu menyalurkan koin surga\nke daerah terdampak gempa di Cianjur',
                            style: TextStyle(
                              color: kYankeesColor,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // INFORMASI LAYANAN
                  Padding(
                    padding: const EdgeInsets.only(right: 6, left: 6),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/image_berita1.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Lazismu menyalurkan koin surga\nke daerah terdampak gempa di Cianjur',
                            style: TextStyle(
                              color: kYankeesColor,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // INFORMASI ASNAF
                  Padding(
                    padding: const EdgeInsets.only(right: 3, left: 12),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: 280,
                      height: 200,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/image_berita1.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Lazismu menyalurkan koin surga\nke daerah terdampak gempa di Cianjur',
                            style: TextStyle(
                              color: kYankeesColor,
                              fontWeight: bold,
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
