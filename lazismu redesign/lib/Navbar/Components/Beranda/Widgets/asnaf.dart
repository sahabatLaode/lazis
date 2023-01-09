import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Asnaf extends StatefulWidget {
  const Asnaf({super.key});

  @override
  State<Asnaf> createState() => _AsnafState();
}

class _AsnafState extends State<Asnaf> {
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
          fakir(),
          miskin(),
          amil(),
        ],
      ),
    );
  }

  Widget fakir() {
    return Container(
      margin: const EdgeInsets.all(
        16,
      ),
      width: double.infinity,
      height: 250,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOMOR
          Container(
            margin: const EdgeInsets.only(
              bottom: 12,
            ),
            width: 32,
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
                '1',
                style: TextStyle(
                  color: kCulturedColor,
                  fontWeight: bold,
                ),
              ),
            ),
          ),

          // JUDUL
          Center(
            child: Text(
              'FAKIR',
              style: TextStyle(
                color: kCrayolaColor,
                fontSize: 48,
                fontWeight: bold,
              ),
            ),
          ),

          const SizedBox(
            height: 32,
          ),

          // DESKRIPSI
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Center(
              child: Text(
                'Orang yang tidak memiliki penghasilan atau orang sengsara (melarat)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget miskin() {
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
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOMOR
          Container(
            margin: const EdgeInsets.only(
              bottom: 12,
            ),
            width: 32,
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
                '2',
                style: TextStyle(
                  color: kCulturedColor,
                  fontWeight: bold,
                ),
              ),
            ),
          ),

          // JUDUL
          Center(
            child: Text(
              'MISKIN',
              style: TextStyle(
                color: kCrayolaColor,
                fontSize: 48,
                fontWeight: bold,
              ),
            ),
          ),

          const SizedBox(
            height: 32,
          ),

          // DESKRIPSI
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Center(
              child: Text(
                'Orang yang memiliki pekerjaan, usaha atau penghasilan tapi tidak mencukupi untuk memnuhi kebutuhan dasar dirinya dan keluarga yang menjadi tanggungannya',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget amil() {
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
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOMOR
          Container(
            margin: const EdgeInsets.only(
              bottom: 12,
            ),
            width: 32,
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
                '3',
                style: TextStyle(
                  color: kCulturedColor,
                  fontWeight: bold,
                ),
              ),
            ),
          ),

          // JUDUL
          Center(
            child: Text(
              'AMIL',
              style: TextStyle(
                color: kCrayolaColor,
                fontSize: 48,
                fontWeight: bold,
              ),
            ),
          ),

          const SizedBox(
            height: 32,
          ),

          // DESKRIPSI
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Center(
              child: Text(
                'Pelaksana (lembaga) pengelolaan zakat yang meliputi himpunan, pengadministrasian, pendayagunaan dan pendistribusian kepada mustahik',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kYankeesColor,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
