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
        backgroundColor: kCulturedColor,
        iconTheme: IconThemeData(
          color: kYankeesColor,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Permintaan Ambulan',
              style: TextStyle(
                color: kYankeesColor,
                fontWeight: medium,
              ),
            ),
          ],
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        children: [
          titikJemput(),
          lokasiAntar(),
          waktuJemput(),
          tombol(),
        ],
      ),
    );
  }

  Widget titikJemput() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
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
      margin: const EdgeInsets.only(
        top: 12,
      ),
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(),
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
        top: 12,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
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
          margin: const EdgeInsets.only(
            top: 32,
          ),
          width: 170,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
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
