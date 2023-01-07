import 'dart:ui';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../theme.dart';

class PermintaanAmbulanWidget extends StatefulWidget {
  const PermintaanAmbulanWidget({super.key});

  @override
  State<PermintaanAmbulanWidget> createState() =>
      _PermintaanAmbulanWidgetState();
}

class _PermintaanAmbulanWidgetState extends State<PermintaanAmbulanWidget> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kCrayolaColor,
        iconTheme: IconThemeData(
          color: kCulturedColor,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Permintaan Ambulan',
              style: TextStyle(
                color: kCulturedColor,
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCrayolaColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ilustrasi(),
          titikJemput(),
          lokasiAntar(),
          waktuJemput(),
          tombol(),
        ],
      ),
    );
  }

  Widget ilustrasi() {
    return Center(
      child: Image.asset(
        'assets/images/image_permintaan_ambulan.png',
        width: 250,
      ),
    );
  }

  Widget titikJemput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        child: Row(
          children: [
            // JUDUL
            Text(
              'Titik Jemput',
              style: TextStyle(
                color: kYankees30Color,
                fontSize: 16,
              ),
            ),

            const Spacer(),

            // ARAH PANAH
            Icon(
              Icons.chevron_right_rounded,
              color: kYankees30Color,
            ),
          ],
        ),
        onTap: () {
          Navigator.pushNamed(context, '/navbar');
        },
      ),
    );
  }

  Widget lokasiAntar() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: DropdownSearch<String>(
        popupProps: PopupProps.bottomSheet(
          fit: FlexFit.loose,
          bottomSheetProps: BottomSheetProps(
            elevation: 16,
            backgroundColor: kCulturedColor,
          ),
          showSelectedItems: true,
        ),
        items: const [
          "Rumah Sakit 1",
          "Puskesmas 2",
          "Klinik 3",
        ],
        clearButtonProps: const ClearButtonProps(
          isVisible: true,
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            fillColor: kLavenderBlushColor,
            labelText: " Lokasi Antar",
            labelStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget waktuJemput() {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        child: Row(
          children: [
            // JUDUL
            Text(
              'Waktu Jemput',
              style: TextStyle(
                color: kYankees30Color,
                fontSize: 16,
              ),
            ),

            const Spacer(),

            // IKON KALENDER
            Icon(
              Icons.calendar_month_rounded,
              color: kYankees30Color,
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }

  Widget tombol() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TOMBOL BATALKAN
        Container(
          margin: const EdgeInsets.only(top: 32),
          width: 170,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: kCrayolaColor,
            ),
            borderRadius: BorderRadiusDirectional.circular(14),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/navbar');
            },
            child: Text(
              'Batalkan',
              style: TextStyle(
                color: kCrayolaColor,
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
        ),

        // TOMBOL KONFIRMASI
        Container(
          margin: const EdgeInsets.only(top: 32),
          width: 170,
          height: 56,
          child: TextButton(
            onPressed: () {
              setState(() {
                isLoading = true;
              });

              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  isLoading = false;
                });
                if (passwordController.text != '12345') {
                  setState(() {
                    isShowPasswordError = true;
                  });
                } else {
                  Navigator.pushNamed(context, '/homeboarding');
                }
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: kCrayolaColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: isLoading
                ? CircularProgressIndicator(
                    color: kCulturedColor,
                    backgroundColor: kYankees50Color,
                  )
                : Text(
                    'Konfirmasi',
                    style: TextStyle(
                      color: kCulturedColor,
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
