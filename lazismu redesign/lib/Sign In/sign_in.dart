import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
        Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Image.asset(
            "assets/images/image_signin.png",
          ),
        ),
        const SizedBox(
          height: 24,
        ),
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
      margin: const EdgeInsets.only(
        top: 24,
      ),
      padding: const EdgeInsets.all(
        18,
      ),
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
          margin: const EdgeInsets.only(
            top: 12,
          ),
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: kYankees30Color,
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
                Icons.visibility_off_outlined,
                color: kYankees30Color,
              ),
            ],
          ),
        ),
        if (isShowPasswordError)
          Container(
            margin: const EdgeInsets.only(
              top: 8,
            ),
            child: Text(
              'Kata sandi salah',
              style: TextStyle(
                color: kRedColor,
              ),
            ),
          ),
      ],
    );
  }

  Widget loginButton() {
    return Container(
      margin: const EdgeInsets.only(
        top: 32,
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
            if (passwordController.text != '12345') {
              setState(() {
                isShowPasswordError = true;
              });
            } else {
              Navigator.pushReplacementNamed(
                context,
                '/navbar',
              );
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
                'Masuk',
                style: TextStyle(
                  color: kCulturedColor,
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
      ),
    );
  }

  Widget resetPasswordButton() {
    return Container(
      margin: const EdgeInsets.only(
        top: 24,
      ),
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
              Navigator.pushNamed(
                context,
                '/forgotpassword',
              );
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
            Navigator.pushNamed(
              context,
              '/sign-up',
            );
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
