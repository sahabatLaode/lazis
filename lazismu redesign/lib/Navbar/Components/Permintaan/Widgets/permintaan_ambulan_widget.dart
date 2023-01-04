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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        children: [
          title(),
          nama(),
          alamat(),
          telepon(),
          nominal(),
          metode(),
          tombol(),
        ],
      ),
    );
  }

  Widget title() {
    return Text(
      'Data :',
      style: TextStyle(
        color: kYankeesColor,
        fontSize: 18,
        fontWeight: semibold,
      ),
    );
  }

  Widget nama() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: kYankees50Color,
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
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: kYankees50Color,
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
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: kYankees50Color,
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
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: kYankees50Color,
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

  Widget metode() {
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
          "Jemput ke Alamat",
          "Diantar ke kantor Lazismu Banguntapan Selatan",
        ],
        clearButtonProps: const ClearButtonProps(
          isVisible: true,
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(),
            ),
            fillColor: kLavenderBlushColor,
            labelText: " Metode",
            labelStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
            ),
          ),
        ),
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
