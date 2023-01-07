import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class KegiatanWidget extends StatefulWidget {
  const KegiatanWidget({super.key});

  @override
  State<KegiatanWidget> createState() => _KegiatanWidgetState();
}

class _KegiatanWidgetState extends State<KegiatanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        backgroundColor: kCrayolaColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kCulturedColor,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCrayolaColor,
        ),
      ),
      body: ListView(
        children: [
          pendidikan(),
          ekonomi(),
          kesehatan(),
        ],
      ),
    );
  }

  Widget pendidikan() {
    return Container(
      margin: const EdgeInsets.all(
        16,
      ),
      width: double.infinity,
      height: 250,
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
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // JUDUL
            Container(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              width: 84,
              height: 32,
              decoration: BoxDecoration(
                color: kYankeesColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: Center(
                child: Text(
                  'Pendidikan',
                  style: TextStyle(
                    color: kCulturedColor,
                  ),
                ),
              ),
            ),

            // ILUSTRASI
            Center(
              child: Image.asset(
                'assets/images/image_kegiatan_pendidikan.png',
                width: 200,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            const Spacer(),

            // TEKS
            Row(
              children: [
                Container(
                  width: 316.7,
                  height: 44,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Kegiatan yang berfokus pada pendidikan lewat donasi yang sudah disalurkan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kCulturedColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: kYankeesColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: kCulturedColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/navbar',
          );
        },
      ),
    );
  }

  Widget ekonomi() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      width: double.infinity,
      height: 250,
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
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // JUDUL
            Container(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              width: 84,
              height: 32,
              decoration: BoxDecoration(
                color: kYankeesColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: Center(
                child: Text(
                  'Ekonomi',
                  style: TextStyle(
                    color: kCulturedColor,
                  ),
                ),
              ),
            ),

            // ILUSTRASI
            Center(
              child: Image.asset(
                'assets/images/image_kegiatan_ekonomi.png',
                width: 240,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            const Spacer(),

            // TEKS
            Row(
              children: [
                Container(
                  width: 316.7,
                  height: 44,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Kegiatan yang berfokus pada ekonomi lewat donasi yang sudah disalurkan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kCulturedColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: kYankeesColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: kCulturedColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/navbar',
          );
        },
      ),
    );
  }

  Widget kesehatan() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      width: double.infinity,
      height: 250,
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
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // JUDUL
            Container(
              margin: const EdgeInsets.only(
                bottom: 12,
              ),
              width: 84,
              height: 32,
              decoration: BoxDecoration(
                color: kYankeesColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: Center(
                child: Text(
                  'Kesehatan',
                  style: TextStyle(
                    color: kCulturedColor,
                  ),
                ),
              ),
            ),

            // ILUSTRASI
            Center(
              child: Image.asset(
                'assets/images/image_kegiatan_kesehatan.png',
                width: 200,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            const Spacer(),

            // TEKS
            Row(
              children: [
                Container(
                  width: 316.7,
                  height: 44,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Kegiatan yang berfokus pada kesehatan lewat donasi yang sudah disalurkan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kCulturedColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: kYankeesColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: kCulturedColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/navbar',
          );
        },
      ),
    );
  }
}
