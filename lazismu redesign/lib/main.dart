import 'package:flutter/material.dart';
import 'package:lazismu/pages/asnaf_page.dart';
import 'package:lazismu/pages/donasi_page.dart';
import 'package:lazismu/pages/kegiatan_page.dart';
import 'package:lazismu/pages/onboarding_page.dart';
import 'package:lazismu/pages/sign_in_page.dart';
import 'package:lazismu/pages/sign_up_page.dart';
import 'package:lazismu/pages/splash_page.dart';
import 'package:lazismu/pages/homeboarding_page.dart';
import 'package:lazismu/pages/reset_password_page.dart';
import 'package:lazismu/pages/layanan_page.dart';
import 'package:lazismu/widgets/navbar_item.dart';

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
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/homeboarding': (context) => const HomeboardingPage(),
        '/resetpassword': (context) => const ResetPasswordPage(),
        '/kegiatan': (context) => const KegiatanPage(),
        '/layanan': (context) => const LayananPage(),
        '/asnaf': (context) => const AsnafPage(),
        '/navbar': (context) => const NavbarItem(),
        '/donasi': (context) => const UserDonasi(),
      },
    );
  }
}
