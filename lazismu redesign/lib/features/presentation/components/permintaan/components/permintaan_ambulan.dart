import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../../../../theme.dart';

class PermintaanAmbulanPage extends StatefulWidget {
  const PermintaanAmbulanPage({super.key});

  @override
  State<PermintaanAmbulanPage> createState() => _PermintaanAmbulanPageState();
}

class _PermintaanAmbulanPageState extends State<PermintaanAmbulanPage> {
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
                    
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        children: [
          title(),
          nama(),
          alamat(),
          telepon(),
          nominal(),
          rekening(),
          nomorRekening(),
          tombol(),
        ],
      ),
    );
  }

  Widget title() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Data :',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: kCrayolaColor,
            padding: const EdgeInsets.all(6),
            minimumSize: const Size(12.0, 12.0),
            // shape: ,
          ),
          child: Text(
            'Gunakan data aplikasi',
            style: TextStyle(
              color: kCulturedColor,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget nama() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: TextFormField(
            decoration: InputDecoration.collapsed(
                hintText: 'Nama',
                hintStyle: TextStyle(
                  color: kYankees30Color,
                  fontSize: 16,
                  fontWeight: medium,
                )),
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Nama tidak boleh kosong',
              style: TextStyle(
                color: kRedColor,
              ),
            ),
          ),
      ],
    );
  }

  Widget alamat() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration.collapsed(
            hintText: 'Alamat',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget telepon() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration.collapsed(
            hintText: 'Nomor Telepon',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget nominal() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration.collapsed(
            hintText: 'Nominal Rp.',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget rekening() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
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
          "Transfer ke rekening Lazismu Banguntapan Selatan",
          "Jemput ke Alamat",
          "Diantar ke kantor Lazismu Banguntapan Selatan",
        ],
        clearButtonProps: const ClearButtonProps(isVisible: true),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            fillColor: kLavenderBlushColor,
            labelText: " Rekening",
            labelStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget nomorRekening() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 10),
      width: double.infinity,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '00011122233344',
                style: TextStyle(
                  color: kYankeesColor,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Bank Bantul',
                style: TextStyle(
                  color: kYankeesColor,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'LazisMu Banguntapan Selatan',
            style: TextStyle(
              color: kYankees30Color,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '20 Desember 2022',
                style: TextStyle(
              color: kYankees30Color,
            ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kCrayolaColor,
                  padding: const EdgeInsets.all(6),
                  minimumSize: const Size(12.0, 12.0),
                  // shape: ,
                ),
                child: Text(
                  'Salin rekening',
                  style: TextStyle(
                    color: kCulturedColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tombol() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TOMBOL KONFIRMASI
        Container(
          margin: const EdgeInsets.only(top: 32),
          width: 170,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
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
                fontWeight: semibold,
              ),
            ),
          ),
        ),

        // TOMBOL BATALKAN
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
                      fontWeight: semibold,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}