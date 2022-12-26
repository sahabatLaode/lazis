import 'package:flutter/material.dart';
import 'package:lazismu/features/presentation/components/beranda/components/asnaf_page.dart';
import 'package:lazismu/features/presentation/components/donasi/components/donasi_infaq.dart';
import 'package:lazismu/features/presentation/components/donasi/components/donasi_zakat_page.dart';
import 'package:lazismu/features/presentation/components/beranda/core/home_page.dart';
import 'package:lazismu/features/presentation/components/beranda/components/kegiatan_page.dart';
import 'package:lazismu/features/onboarding/core/onboarding_page.dart';
import 'package:lazismu/features/presentation/components/permintaan/components/permintaan_ambulan.dart';
import 'package:lazismu/features/presentation/components/permintaan/components/permintaan_koin.dart';
import 'package:lazismu/features/sign%20in/sign_in_page.dart';
import 'package:lazismu/features/onboarding/splash_page.dart';
import 'package:lazismu/features/presentation/core/homeboarding_page.dart';
import 'package:lazismu/features/forgot%20password/core/forgot_password_page.dart';
import 'package:lazismu/features/presentation/components/beranda/components/layanan_page.dart';
import 'package:lazismu/widgets/navbar_item.dart';
import 'features/forgot password/components/kode_otp_page.dart';
import 'features/forgot password/components/reset_password.dart';
import 'features/sign up/sign_up_page.dart';
import 'features/sign up/sign_up_page_new.dart';

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
        '/home': (context) => const UserHome(),
        '/sign-up-new': (context) => const SignUpPageNew(),
        '/homeboarding': (context) => const HomeboardingPage(),
        '/forgotpassword': (context) => const ForgotPasswordPage(),
        '/kode-otp': (context) => const KodeOtpPage(),
        '/reset-password': (context) => const ResetPasswordPage(),
        '/kegiatan': (context) => const KegiatanPage(),
        '/layanan': (context) => const LayananPage(),
        '/asnaf': (context) => const AsnafPage(),
        '/navbar': (context) => const NavbarItem(),
        '/donasi-zakat': (context) => const DonasiZakatPage(),
        '/donasi-infaq': (context) => const DonasiInfaqPage(),
        '/permintaan-ambulan': (context) => const PermintaanAmbulanPage(),
        '/permintaan-koin': (context) => const PermintaanKoinSurga(),
      },
    );
  }
}
