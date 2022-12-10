import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';
// import 'package:fluttertoast/fluttertoast.dart';

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
        centerTitle: true,
        backgroundColor: kCulturedColor,
        iconTheme: IconThemeData(
          color: kYankeesColor,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Masuk',
              style: yankeesStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
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
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat datang di LazisMu\nBanguntapan Selatan',
            style: yankeesStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 4),
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
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 48),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration.collapsed(
          hintText: 'Email atau Nomor HP',
          hintStyle: yankees30Style.copyWith(
            fontSize: 16,
            fontWeight: medium,
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
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kLavenderBlushColor,
            borderRadius: BorderRadius.circular(14),
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
                    hintText: 'Kata Sandi',
                    hintStyle: yankees30Style.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
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
            margin: EdgeInsets.only(top: 8),
            child: Text(
              'Kata sandi salah',
              style: redStyle,
            ),
          ),
      ],
    );
  }

  Widget loginButton() {
    return Container(
      margin: EdgeInsets.only(top: 32),
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
            if (passwordController.text != '12345') {
              setState(() {
                isShowPasswordError = true;
              });
            } else {
              Navigator.pushNamed(context, '/navbar');
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
                style: crayolaStyle.copyWith(
                  color: kCulturedColor,
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
      ),
    );
  }

  Widget resetPasswordButton() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lupa kata sandi?',
            style: yankeesStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/resetpassword');
            },
            child: Text(
              'Atur ulang kata sandi',
              style: blueStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget signUpButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Belum punya akun?',
            style: yankeesStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Daftar',
              style: blueStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
