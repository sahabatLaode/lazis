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
          signUpButton(),
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
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 32,
            fontWeight: extrablack,
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
        border: Border.all(
          width: 1,
          color: kYankees50Color,
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
            hintText: 'Nama lengkap',
            hintStyle: TextStyle(
              color: kYankees30Color,
              fontSize: 16,
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
        border: Border.all(
          width: 1,
          color: kYankees50Color,
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
            border: Border.all(
              width: 1,
              color: kYankees50Color,
            ),
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
                  keyboardType: TextInputType.phone,
                  autocorrect: false,
                  obscureText: true,
                  controller: passwordController,
                  // keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Nomor Telepon',
                    hintStyle: TextStyle(
                      color: kYankees30Color,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget signUpButton() {
    return TextButton(
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
        padding: const EdgeInsets.all(16),
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
              style: TextStyle(
                color: kCulturedColor,
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
    );
  }

  Widget signInButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sudah punya akun?',
            style: TextStyle(
              color: kYankeesColor,
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'Masuk',
              style: TextStyle(
                color: kBlueColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
