import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isLoading = false;

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
          child: Image.asset("assets/image_lupa_sandi.png"),
        ),

        const SizedBox(height: 24),

        // TITLE
        Text(
          'Lupa kata sandi?',
          style: yankeesStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Widget emailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        // SUB TITLE
        Text(
          'Masukkan email valid anda\nuntuk mendapatkan kode OTP',
          style: yankeesStyle,
        ),

        // EMAIL INPUT
        Container(
          margin: const EdgeInsets.only(top: 24),
          padding: const EdgeInsets.all(16),
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
        ),
      ],
    );
  }

  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          setState(() {
            isLoading = true;
          });

          Future.delayed(const Duration(seconds: 2), () {
            setState(() {
              isLoading = false;
            });
            if (emailController.text != '12345') {
              setState(() {
                isShowPasswordError = true;
              });
            } else {
              Navigator.pushNamed(context, '/kode-otp');
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
                'Kirim',
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
