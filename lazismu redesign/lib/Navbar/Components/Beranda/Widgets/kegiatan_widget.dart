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
          ],
        ),
      ),
    );
  }

  Widget pendidikan() {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 250,
        padding: EdgeInsets.all(
          16,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image_kegiatan_pendidikan.png',
              width: 200,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Kegiatan yang berfokus pada pendidikan lewat donasi yang sudah disalurkan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kYankeesColor,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/navbar',
        );
      },
    );
  }
}
