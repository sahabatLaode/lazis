import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class KodeOtpPage extends StatefulWidget {
  const KodeOtpPage({super.key});

  @override
  State<KodeOtpPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<KodeOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kCulturedColor,
        iconTheme: IconThemeData(
          color: kYankeesColor,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          title(),
          otpInput(),
          continueButton(),
        ],
      ),
    );
  }

  Widget title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ILUSTRASI
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Image.asset("assets/images/image_OTP.png"),
        ),

        const SizedBox(height: 24),

        // TITLE
        Text(
          'Kode OTP',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Widget otpInput() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          width: 1,
          color: kYankees50Color,
        ),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Masukkan OTP',
          hintStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget continueButton() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 56,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/reset-password');
        },
        style: TextButton.styleFrom(
          backgroundColor: kCrayolaColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Lanjutkan',
          style: TextStyle(
            color: kCulturedColor,
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
