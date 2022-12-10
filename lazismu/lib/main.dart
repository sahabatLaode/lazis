import 'package:flutter/material.dart';
import 'package:lazismu/pages/donasi_page.dart';
import 'package:lazismu/pages/onboarding_page.dart';
import 'package:lazismu/pages/sign_in_page.dart';
import 'package:lazismu/pages/sign_up_page.dart';
import 'package:lazismu/pages/splash_page.dart';
import 'package:lazismu/pages/homeboarding_page.dart';
import 'package:lazismu/pages/reset_password_page.dart';
import 'package:lazismu/pages/layanan_page.dart';
import 'package:lazismu/widgets/navbar_item.dart';
import 'package:lazismu/pages/donasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/homeboarding': (context) => HomeboardingPage(),
        '/resetpassword': (context) => ResetPasswordPage(),
        '/layanan': (context) => LayananPage(),
        '/navbar': (context) => NavbarItem(),
        '/donasi': (context) => UserDonasi(),
      },
    );
  }
}
