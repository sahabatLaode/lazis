import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCrayolaColor,
          statusBarIconBrightness: Brightness.light,
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
            borderRadius: BorderRadius.circular(
              14,
            ),
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
                  const SizedBox(
                    height: 12,
                  ),
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
                margin: const EdgeInsets.only(
                  left: 36,
                ),
                width: 2,
                height: 70,
                decoration: BoxDecoration(
                  color: kYankeesColor,
                  borderRadius: BorderRadius.circular(
                    99,
                  ),
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
                  const SizedBox(
                    height: 12,
                  ),
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
      children: [
        // QUICK MENU ZAKAT++
        Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: kLavenderBlushColor,
                borderRadius: BorderRadius.circular(
                  14,
                ),
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
                  Navigator.pushNamed(
                    context,
                    '/donasi-zakat',
                  );
                },
                icon: Image.asset(
                  'assets/icons/icon_zakat.png',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
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
                borderRadius: BorderRadius.circular(
                  14,
                ),
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
                  Navigator.pushNamed(
                    context,
                    '/donasi-infaq',
                  );
                },
                icon: Image.asset(
                  'assets/icons/icon_infaq.png',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
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
                borderRadius: BorderRadius.circular(
                  14,
                ),
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
                  Navigator.pushNamed(
                    context,
                    '/permintaan-koin',
                  );
                },
                icon: Image.asset(
                  'assets/icons/icon_koin_surga.png',
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
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
          Text(
            'Informasi',
            style: TextStyle(
              color: kYankeesColor,
              fontSize: 24,
              fontWeight: bold,
            ),
          ),

          const SizedBox(
            height: 12,
          ),

          // ISI
          Padding(
            padding: const EdgeInsets.only(
              top: 6,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // INFORMASI KEGIATAN
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8,
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                    child: InkWell(
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
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 114,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/kegiatan',
                                  );
                                },
                                icon: Image.asset(
                                  'assets/images/image_kegiatan.png',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 12,
                                top: 118,
                              ),
                              child: Text(
                                'Kegiatan',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 120,
                                top: 101,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/kegiatan',
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_right_rounded,
                                ),
                                iconSize: 48,
                                color: kCrayolaColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/kegiatan',
                        );
                      },
                    ),
                  ),

                  // INFORMASI ASNAF
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 3,
                      left: 8,
                    ),
                    child: InkWell(
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
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 114,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/asnaf',
                                  );
                                },
                                icon: Image.asset(
                                  'assets/images/image_asnaf.png',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 12,
                                top: 118,
                              ),
                              child: Text(
                                'Asnaf',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 120,
                                top: 101,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/asnaf',
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_right_rounded,
                                ),
                                iconSize: 48,
                                color: kCrayolaColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/asnaf',
                        );
                      },
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
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 24,
      ),
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
                  padding: const EdgeInsets.all(
                    6,
                  ),
                  minimumSize: const Size(
                    12.0,
                    12.0,
                  ),
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
            padding: const EdgeInsets.only(
              top: 6,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // BERITA 1
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Container(
                      width: 280,
                      height: 220,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/image_berita1.jpg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 12,
                            ),
                            child: Text(
                              'Lazismu menyalurkan koin surga untuk Cianjur Lorem Ipsum asdifa euhfakngei aeunhaoen afnoa',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: kYankeesColor,
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 178,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Baca berita',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // BERITA 2
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Container(
                      width: 280,
                      height: 220,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/image_berita1.jpg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 12,
                            ),
                            child: Text(
                              'Lazismu menyalurkan koin surga untuk Cianjur',
                              style: TextStyle(
                                color: kYankeesColor,
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 178,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Baca berita',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // BERITA 3
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 3,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Container(
                      width: 280,
                      height: 220,
                      decoration: BoxDecoration(
                        color: kLavenderBlushColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 1,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: BoxDecoration(
                              color: kCulturedColor,
                              borderRadius: BorderRadius.circular(
                                12,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/image_berita1.jpg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 12,
                            ),
                            child: Text(
                              'Lazismu menyalurkan koin surga untuk Cianjur',
                              style: TextStyle(
                                color: kYankeesColor,
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 178,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Baca berita',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
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
