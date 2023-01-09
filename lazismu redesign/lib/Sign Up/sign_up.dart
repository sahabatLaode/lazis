import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
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
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Image.asset(
            "assets/images/image_signup.png",
          ),
        ),

        const SizedBox(
          height: 24,
        ),

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
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: kYankees30Color,
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
    );
  }

  Widget phoneNumberInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: kYankees30Color,
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
                    image: AssetImage('assets/icons/icon_bendera.png'),
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
      ],
    );
  }

  Widget signUpButton() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 56,
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
                style: TextStyle(
                  color: kCulturedColor,
                  fontSize: 18,
                  fontWeight: bold,
                ),
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
