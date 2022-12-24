import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

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
          passwordInput(),
          loginButton(),
          resetPasswordButton(),
          signUpButton(),
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
          child: Image.asset("assets/image_signin.png"),
        ),

        const SizedBox(height: 24),

        // TITLE
        Text(
          'Masuk',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 32,
            fontWeight: extrablack,
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
        border: Border.all(
          width: 1,
          color: kYankees50Color,
        ),
      ),
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Email atau Nomor HP',
          hintStyle: TextStyle(
            color: kYankees30Color,
            fontSize: 16,
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
              Expanded(
                child: TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  controller: passwordController,
                  // keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Kata sandi',
                    hintStyle: TextStyle(
                      color: kYankees30Color,
                      fontSize: 16,
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
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              'Kata sandi salah',
              style: TextStyle(
                color: kRedColor,
              ),
            ),
          ),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget loginButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLoading = true;
        });

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isLoading = false;
          });
          if (passwordController.text != '12345') {
            setState(() {
              isShowPasswordError = true;
            });
          } else {
            Navigator.pushReplacementNamed(context, '/navbar');
          }
        });
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
              'Masuk',
              style: TextStyle(
                color: kCulturedColor,
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
    );
  }

  Widget resetPasswordButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lupa kata sandi?',
            style: TextStyle(
              color: kYankeesColor,
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/forgotpassword');
            },
            child: Text(
              'Atur ulang kata sandi',
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

  Widget signUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Belum punya akun?',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-up-new');
          },
          child: Text(
            'Daftar',
            style: TextStyle(
              color: kBlueColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
