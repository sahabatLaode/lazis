import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
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
          passwordInput(),
          confirmPasswordInput(),
          saveButton(),
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
          'Atur ulang kata sandi',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Widget passwordInput() {
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
        decoration: InputDecoration.collapsed(
          hintText: 'Kata sandi baru',
          hintStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget confirmPasswordInput() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
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
        decoration: InputDecoration.collapsed(
          hintText: 'Konfirmasi kata sandi',
          hintStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget saveButton() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 56,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        style: TextButton.styleFrom(
          backgroundColor: kCrayolaColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Simpan',
          style: TextStyle(
            color: kCulturedColor,
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}
