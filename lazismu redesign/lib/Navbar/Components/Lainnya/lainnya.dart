import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Lainnya extends StatefulWidget {
  const Lainnya({super.key});

  @override
  State<Lainnya> createState() => _LainnyaState();
}

class _LainnyaState extends State<Lainnya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCulturedColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kCrayolaColor,
        title: Text(
          'Lainnya',
          style: TextStyle(
            color: kCulturedColor,
            fontWeight: bold,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCrayolaColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: ListView(
        children: [
          profil(),
          pengaturan(),
          layanan(),
          tombol(),
        ],
      ),
    );
  }

  Widget profil() {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 32,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kLavenderBlushColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NAMA
              Text(
                "LM. MA'RIFATUN",
                style: TextStyle(
                  color: kYankeesColor,
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              // EMAIL
              Text(
                'lazismu111@gmail.com',
                style: TextStyle(
                  color: kYankeesColor,
                  fontSize: 12,
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              // NOMOR HP
              Text(
                '081234567890',
                style: TextStyle(
                  color: kYankeesColor,
                  fontSize: 12,
                ),
              ),

              const SizedBox(
                height: 8,
              ),

              // KETERANGAN
              Text(
                "Lengkapi Profil",
                style: TextStyle(
                  color: kRedColor,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),

          const Spacer(),

          // Icon panah
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profil');
            },
            icon: Icon(
              Icons.edit_note_rounded,
              color: kCrayolaColor,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }

  Widget pengaturan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Pengaturan',
            style: TextStyle(
              color: kCrayolaColor,
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 12,
          ),
          padding: const EdgeInsets.all(
            16,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kCulturedColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              // MENU UBAH PASSWORD
              InkWell(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.lock_outline_rounded,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Ubah Kata Sandi',
                      style: TextStyle(
                        color: kYankeesColor,
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: kCrayolaColor,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/navbar',
                  );
                },
              ),

              // const Spacer(),

              // Container(
              //   width: double.infinity,
              //   height: 1,
              //   color: kYankees50Color,
              // ),

              // const Spacer(),

              // // MENU BAHASA
              // InkWell(
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       const Icon(
              //         Icons.abc_rounded,
              //       ),
              //       const SizedBox(
              //         width: 16,
              //       ),
              //       Text(
              //         'Ganti Bahasa',
              //         style: TextStyle(
              //           color: kYankeesColor,
              //           fontSize: 16,
              //           fontWeight: medium,
              //         ),
              //       ),
              //       const Spacer(),
              //       Icon(
              //         Icons.chevron_right_rounded,
              //         color: kCrayolaColor,
              //       ),
              //     ],
              //   ),
              //   onTap: () {
              //     Navigator.pushNamed(
              //       context,
              //       '/navbar',
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Widget layanan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Layanan',
            style: TextStyle(
              color: kCrayolaColor,
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 12,
          ),
          padding: const EdgeInsets.all(
            16,
          ),
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
            color: kCulturedColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              // MENU SYARAT DAN KETENTUAN
              InkWell(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.handshake_outlined,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Syarat dan Ketentuan',
                      style: TextStyle(
                        color: kYankeesColor,
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: kCrayolaColor,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/navbar',
                  );
                },
              ),

              const Spacer(),

              Container(
                width: double.infinity,
                height: 1,
                color: kYankees50Color,
              ),

              const Spacer(),

              // MENU BANTUAN
              InkWell(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.question_mark_outlined,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Bantuan',
                      style: TextStyle(
                        color: kYankeesColor,
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: kCrayolaColor,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/navbar',
                  );
                },
              ),
              const Spacer(),

              Container(
                width: double.infinity,
                height: 1,
                color: kYankees50Color,
              ),

              const Spacer(),

              // MENU ULASAN
              InkWell(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.reviews_outlined,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Ulasan',
                      style: TextStyle(
                        color: kYankeesColor,
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '0.0.1',
                      style: TextStyle(
                        color: kYankees30Color,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: kCrayolaColor,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/navbar',
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget tombol() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      width: double.infinity,
      height: 56,
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            '/sign-in',
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kCrayolaColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              14,
            ),
          ),
        ),
        child: Text(
          'Keluar',
          style: TextStyle(
            color: kCulturedColor,
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
