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
          emailInput(),
          loginButton(),
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
          child: Image.asset("assets/image_OTP.png"),
        ),

        const SizedBox(height: 24),

        // TITLE
        Text(
          'Kode OTP',
          style: yankeesStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Kode OTP',
          hintStyle: yankees30Style.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: 56,
      width: double.infinity,
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
