import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final emailController = TextEditingController(text: '');

  bool isShowEmailError = false;
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
              'Lupa kata sandi',
              style: yankeesStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 24),
            child: Text(
              'Atur ulang\nkata sandi anda',
              style: yankeesStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 24, right: 4),
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
                'Masukkan email valid anda untuk\nmendapatkan kode OTP',
                style: yankeesStyle.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 32, left: 24, right: 24),
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
          ),
          if (isShowEmailError)
            Container(
              margin: EdgeInsets.only(top: 8, left: 24),
              child: Text(
                'Masukkan email dengan benar',
                style: redStyle,
              ),
            ),
          Container(
            margin: EdgeInsets.only(top: 32, left: 24, right: 24),
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
                  if (emailController.text != '12345') {
                    setState(() {
                      isShowEmailError = true;
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
                      'Kirim',
                      style: crayolaStyle.copyWith(
                        color: kCulturedColor,
                        fontSize: 18,
                        fontWeight: semibold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
