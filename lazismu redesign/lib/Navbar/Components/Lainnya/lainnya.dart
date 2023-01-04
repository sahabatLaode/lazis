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
        automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: kCulturedColor,
        title: Text(
          'Lainnya',
          style: TextStyle(
            color: kYankeesColor,
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCulturedColor,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: ListView(
        children: [
          profil(),
          pengaturan(),
        ],
      ),
    );
  }

  Widget profil() {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kCulturedColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil
            Container(
              margin: const EdgeInsets.only(
                right: 16,
              ),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kYankeesColor,
              ),
              child: Center(
                child: Text(
                  'LM',
                  style: TextStyle(
                    color: kCulturedColor,
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),

            // Nama, nomor HP, ranting
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LM. Ma'rifatun",
                  style: TextStyle(
                    color: kYankeesColor,
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Lengkapi Profil",
                  style: TextStyle(
                    color: kBlueColor,
                  ),
                ),
              ],
            ),

            const Spacer(),

            // Icon panah
            Icon(
              Icons.chevron_right,
              color: kYankeesColor,
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
    );
  }

  Widget pengaturan() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Text(
            'Pengaturan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ),
      ],
    );
  }
}
