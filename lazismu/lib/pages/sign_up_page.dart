import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isLoading = false;

  DateTime selectDate = DateTime.now();

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
              'Daftar',
              style: yankeesStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        children: [
          title(),
          nameInput(),
          emailInput(),
          passwordInput(),
          dateInput(),
          phoneNumberInput(),
          nikInput(),
          addressInput(),
          bloodInput(),
          rantingInput(),
          signUpButton(),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ayo bergabung bersama\nLazisMu Banguntapan Selatan',
            style: yankeesStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 4),
                width: 128,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kYankeesColor,
                ),
              ),
              Container(
                width: 24,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kYankeesColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Buat akun untuk memulai zakat, infaq dan\nsodakoh untuk bangkitkan Indonesia.',
                style: yankeesStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Nama Lengkap',
            hintStyle: yankees30Style.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: yankees30Style.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  Widget passwordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  controller: passwordController,
                  // keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Kata Sandi',
                    hintStyle: yankees30Style.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.visibility_outlined,
                color: kYankees30Color,
              ),
            ],
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              'Kata sandi belum diisi',
              style: redStyle,
            ),
          ),
      ],
    );
  }

  Widget dateInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          width: 366,
          height: 56,
          padding: EdgeInsets.only(left: 16, right: 6),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  selectDate.toString(),
                  style: yankees30Style.copyWith(
                    color: kYankees30Color,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: selectDate,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2040),
                      ).then((value) {
                        if (value != null) {
                          setState(() {
                            selectDate = value;
                          });
                        }
                      });
                    },
                    icon: Icon(
                      Icons.date_range_rounded,
                      color: kYankees30Color,
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

  Widget phoneNumberInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_bendera.png'),
                  ),
                ),
              ),
              Text(
                '+62',
                style: yankeesStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  autocorrect: false,
                  obscureText: true,
                  controller: passwordController,
                  // keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Nomor Telepon',
                    hintStyle: yankees30Style.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget nikInput() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Nomor Induk KTP (NIK)',
            hintStyle: yankees30Style.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget addressInput() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Alamat',
            hintStyle: yankees30Style.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
      ),
    );
  }

  Widget bloodInput() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: DropdownSearch<String>(
        popupProps: PopupProps.bottomSheet(
          fit: FlexFit.loose,
          bottomSheetProps: BottomSheetProps(
            elevation: 16,
            backgroundColor: kCulturedColor,
          ),
          showSelectedItems: true,
        ),
        items: ["A", "B", "AB", "O"],
        clearButtonProps: ClearButtonProps(isVisible: true),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            fillColor: kLavenderBlushColor,
            labelText: " Golongan Darah",
            labelStyle: yankees30Style.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget rantingInput() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: DropdownSearch<String>(
        popupProps: PopupProps.bottomSheet(
          fit: FlexFit.loose,
          bottomSheetProps: BottomSheetProps(
            elevation: 16,
            backgroundColor: kCulturedColor,
          ),
          showSelectedItems: true,
        ),
        items: ["Ranting 1", "Ranting 2", "Ranting 3", "Ranting 4"],
        clearButtonProps: ClearButtonProps(isVisible: true),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            fillColor: kLavenderBlushColor,
            labelText: " Ranting",
            labelStyle: yankees30Style.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });

          Future.delayed(Duration(seconds: 2), () {
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
                'Daftar',
                style: crayolaStyle.copyWith(
                  color: kCulturedColor,
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
      ),
    );
  }
}
