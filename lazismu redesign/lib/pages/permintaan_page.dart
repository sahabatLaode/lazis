import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class UserPermintaan extends StatelessWidget {
  const UserPermintaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCultured95Color,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kCultured95Color,
        title: Text(
          'Permintaan',
          style: yankeesStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Ambulan Darurat',
          style: culturedStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        icon: const Icon(Icons.local_hospital_outlined),
        backgroundColor: kRedColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset('assets/image_permintaan.png'),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 70),
            padding:
                const EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
            width: double.infinity,
            height: 86,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icon_ambulan.png'),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Permintaan Ambulan',
                      style: yankeesStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kYankeesColor,
                    size: 32.0,
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
            padding:
                const EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
            width: double.infinity,
            height: 86,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icon_darah.png'),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Permintaan Darah',
                      style: yankeesStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kYankeesColor,
                    size: 32.0,
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
            padding:
                const EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
            width: double.infinity,
            height: 86,
            decoration: BoxDecoration(
              color: kCulturedColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/icon_koin.png'),
                    const SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Permintaan Koin Surga',
                      style: yankeesStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/navbar');
                  },
                  icon: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: kYankeesColor,
                    size: 32.0,
                  ),
                  padding: const EdgeInsets.all(0.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
