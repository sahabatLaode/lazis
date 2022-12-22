import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class SignUpPageNew extends StatefulWidget {
  const SignUpPageNew({super.key});

  @override
  State<SignUpPageNew> createState() => _SignUpPageNewState();
}

class _SignUpPageNewState extends State<SignUpPageNew> {
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
        backgroundColor: kCulturedColor,
        iconTheme: IconThemeData(
          color: kYankeesColor,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        children: [
          title(),
          nameInput(),
          emailInput(),
          phoneNumberInput(),
          continueButton(),
          signInButton(),
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
          child: Image.asset("assets/image_signup.png"),
        ),

        const SizedBox(height: 24),

        // TITLE
        Text(
          'Daftar',
          style: yankeesStyle.copyWith(
            fontSize: 32,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Widget nameInput() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(16),
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
      margin: const EdgeInsets.only(top: 12),
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
    );
  }

  Widget phoneNumberInput() {
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
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
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
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
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

  Widget continueButton() {
    return Container(
      margin: const EdgeInsets.only(top: 32, bottom: 12),
      height: 56,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/homeboarding');
          // setState(() {
          //   isLoading = true;
          // });

          // Future.delayed(const Duration(seconds: 2), () {
          //   setState(() {
          //     isLoading = false;
          //   });
          //   if (passwordController.text != '12345') {
          //     setState(() {
          //       isShowPasswordError = true;
          //     });
          //   } else {
          //     Navigator.pushNamed(context, '/homeboarding');
          //   }
          // });
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

  Widget signInButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sudah punya akun?',
          style: yankeesStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          child: Text(
            'Masuk',
            style: blueStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
        ),
      ],
    );
  }
}
