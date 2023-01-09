import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../../../theme.dart';
import 'package:flutter/services.dart';

class DonasiZakat extends StatefulWidget {
  const DonasiZakat({super.key});

  @override
  State<DonasiZakat> createState() => _DonasiZakatState();
}

class _DonasiZakatState extends State<DonasiZakat> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');
  final rekeningNumber = '00011122233344';

  bool isShowPasswordError = false;
  bool isLoading = false;

  TextEditingController copyController = TextEditingController();

  @override
  void dispose() {
    copyController.dispose();
    super.dispose();
  }

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
        title: Text(
          'Donasi Zakat',
          style: TextStyle(
            color: kYankeesColor,
            fontWeight: medium,
          ),
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
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
        // ElevatedButton(
        //   onPressed: () {},
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: kCrayolaColor,
        //     padding: const EdgeInsets.all(6),
        //     minimumSize: const Size(12.0, 12.0),
        //     // shape: ,
        //   ),
        //   child: Text(
        //     'Gunakan data aplikasi',
        //     style: TextStyle(
        //       color: kCulturedColor,
        //       fontSize: 12,
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget nama() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
          child: TextFormField(
            decoration: InputDecoration.collapsed(
                hintText: 'Nama',
                hintStyle: TextStyle(
                  color: kYankees30Color,
                  fontSize: 16,
                )),
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: const EdgeInsets.only(
              top: 8,
            ),
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
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.streetAddress,
        decoration: InputDecoration.collapsed(
            hintText: 'Alamat',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            )),
      ),
    );
  }

  Widget telepon() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration.collapsed(
            hintText: 'Nomor Telepon',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            )),
      ),
    );
  }

  Widget nominal() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
        ),
      ),
      child: Row(
        children: [
          Text(
            'Rp.',
            style: TextStyle(
              color: kYankeesColor,
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextFormField(
              keyboardType: TextInputType.number,
              autocorrect: false,
              // obscureText: true,
              controller: passwordController,
              // keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration.collapsed(
                hintText: 'Nominal',
                hintStyle: TextStyle(
                  color: kYankees30Color,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
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
        clearButtonProps: const ClearButtonProps(
          isVisible: true,
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(),
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
      margin: const EdgeInsets.only(
        top: 24,
      ),
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        top: 18,
        bottom: 10,
      ),
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
                rekeningNumber,
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
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(text: rekeningNumber),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kCrayolaColor,
                  padding: const EdgeInsets.all(6),
                  minimumSize: const Size(12.0, 12.0),
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
          margin: const EdgeInsets.only(
            top: 32,
          ),
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
