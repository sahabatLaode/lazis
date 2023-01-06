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
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: ListView(
          children: [
            pendidikan(),
            ekonomi(),
            kesehatan(),
          ],
        ),
      ),
    );
  }

  Widget pendidikan() {
    return Row(
      children: [
        Container(
          width: 300,
          height: 250,
          padding: const EdgeInsets.only(
            top: 16,
          ),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // ILUSTRASI
                Image.asset(
                  'assets/images/image_kegiatan_pendidikan.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 16,
                ),

                // TEKS
                Container(
                  height: 54,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: BorderRadius.circular(14),
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
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),

        const Spacer(),

        // TOMBOL PANAH
        Container(
          width: 48,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: kCrayolaColor,
              width: 2,
            ),
          ),
          child: InkWell(
            child: Center(
              child: Icon(
                Icons.chevron_right_rounded,
                size: 32,
                color: kCrayolaColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),
      ],
    );
  }

  Widget ekonomi() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsetsDirectional.only(
            top: 16,
          ),
          width: 300,
          height: 250,
          padding: const EdgeInsets.only(
            top: 16,
          ),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/image_kegiatan_ekonomi.png',
                  width: 240,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 54,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: BorderRadius.circular(14),
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
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),
        const Spacer(),

        // TOMBOL PANAH
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          width: 48,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: kCrayolaColor,
              width: 2,
            ),
          ),
          child: InkWell(
            child: Center(
              child: Icon(
                Icons.chevron_right_rounded,
                size: 32,
                color: kCrayolaColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),
      ],
    );
  }

  Widget kesehatan() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsetsDirectional.only(
            top: 16,
          ),
          width: 300,
          height: 250,
          padding: const EdgeInsets.only(
            top: 16,
          ),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/image_kegiatan_kesehatan.png',
                  width: 220,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 54,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: kCrayolaColor,
                    borderRadius: BorderRadius.circular(14),
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
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),
        const Spacer(),

        // TOMBOL PANAH
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          width: 48,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: kCrayolaColor,
              width: 2,
            ),
          ),
          child: InkWell(
            child: Center(
              child: Icon(
                Icons.chevron_right_rounded,
                size: 32,
                color: kCrayolaColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/navbar',
              );
            },
          ),
        ),
      ],
    );
  }
}
