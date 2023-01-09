import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ForgotPassword> {
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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: [
          title(),
          emailInput(),
          sendButton(),
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
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Image.asset("assets/images/image_lupa_sandi.png"),
        ),

        const SizedBox(
          height: 24,
        ),

        // TITLE
        Text(
          'Lupa kata sandi?',
          style: TextStyle(
            color: kYankeesColor,
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
        const SizedBox(
          height: 12,
        ),
        // SUB TITLE
        Text(
          'Masukkan email valid anda\nuntuk mendapatkan kode OTP',
          style: TextStyle(
            color: kYankeesColor,
          ),
        ),

        // EMAIL INPUT
        Container(
          margin: const EdgeInsets.only(
            top: 24,
          ),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: kYankees30Color,
            ),
          ),
          child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration.collapsed(
              hintText: 'Email',
              hintStyle: TextStyle(
                color: kYankees30Color,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget sendButton() {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
      ),
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
