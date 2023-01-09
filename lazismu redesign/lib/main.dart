import 'package:flutter/material.dart';
import 'package:lazismu/Navbar/Components/Beranda/Widgets/asnaf.dart';
import 'package:lazismu/Navbar/Components/Beranda/Widgets/kegiatan.dart';
import 'package:lazismu/Navbar/Components/Donasi/Widgets/donasi_infaq.dart';
import 'package:lazismu/Navbar/Components/Donasi/Widgets/donasi_zakat.dart';
import 'package:lazismu/Navbar/Components/Lainnya/Widgets/profil.dart';
import 'package:lazismu/Navbar/Components/Permintaan/Widgets/permintaan_ambulan.dart';
import 'package:lazismu/Navbar/Components/Permintaan/Widgets/permintaan_koin.dart';
import 'package:lazismu/Onboarding/onboarding.dart';
import 'package:lazismu/Sign%20In/sign_in.dart';
import 'package:lazismu/Splashpage/splash_page.dart';
import 'package:lazismu/Homeboarding/homeboarding.dart';
import 'package:lazismu/Forgot%20Password/forgot_password.dart';
import 'package:lazismu/Navbar/navbar_item.dart';
import 'Sign Up/sign_up.dart';
import 'Forgot Password/kode_otp.dart';
import 'Forgot Password/reset_password.dart';

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
        '/onboarding': (context) => const Onboarding(),
        '/sign-in': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
        '/homeboarding': (context) => const Homeboarding(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/kode-otp': (context) => const KodeOtp(),
        '/reset-password': (context) => const ResetPassword(),
        '/kegiatan': (context) => const Kegiatan(),
        '/asnaf': (context) => const Asnaf(),
        '/navbar': (context) => const NavbarItem(),
        '/donasi-zakat': (context) => const DonasiZakat(),
        '/donasi-infaq': (context) => const DonasiInfaq(),
        '/permintaan-ambulan': (context) => const PermintaanAmbulanWidget(),
        '/permintaan-koin': (context) => const PermintaanKoin(),
        '/profil': (context) => const Profil(),
      },
    );
  }
}
