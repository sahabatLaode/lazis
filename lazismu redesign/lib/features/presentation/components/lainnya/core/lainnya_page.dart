import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class UserLainnya extends StatelessWidget {
  const UserLainnya({super.key});

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
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 24,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Foto profil
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kYankeesColor,
                        ),
                        child: Center(
                          child: Text(
                            'LM',
                            style: TextStyle(
                              color: kCulturedColor,
                              fontSize: 36,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 24),

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
                          Container(
                            margin: const EdgeInsets.only(top: 6),
                            child: Text(
                              "081234567890",
                              style: TextStyle(
                                color: kYankees30Color,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            child: Text(
                              "123@gmail.com",
                              style: TextStyle(
                                color: kYankees30Color,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3),
                            child: Text(
                              "Ranting 1",
                              style: TextStyle(
                                color: kYankees30Color,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // Tombol lengkapi profil
                Container(
                  margin: const EdgeInsets.only(left: 148),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: kBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Lengkapi profil",
                      style: TextStyle(
                        color: kCulturedColor,
                      ),
                    ),
                  ),
                ),

                // Profil menu item
                Container(
                  margin: const EdgeInsets.only(top: 85),
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 24,
                    bottom: 164.818,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(36),
                    ),
                    color: kLavenderBlushColor,
                  ),
                  child: Column(
                    children: [
                      // Menu item profil
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                width: 24,
                                child:
                                    Image.asset('assets/icons/icon_profil.png'),
                              ),
                              Text(
                                'Profil',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.chevron_right),
                                color: kYankees30Color,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Menu item pengaturan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                width: 24,
                                child: Image.asset(
                                    'assets/icons/icon_pengaturan.png'),
                              ),
                              Text(
                                'Pengaturan',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.chevron_right),
                                color: kYankees30Color,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Menu item bantuan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                width: 24,
                                child: Image.asset(
                                    'assets/icons/icon_bantuan.png'),
                              ),
                              Text(
                                'Bantuan',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.chevron_right),
                                color: kYankees30Color,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Menu item syarat dan ketentuan
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                width: 24,
                                child:
                                    Image.asset('assets/icons/icon_syarat.png'),
                              ),
                              Text(
                                'Syarat dan ketentuan',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.chevron_right),
                                color: kYankees30Color,
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Menu item tentang lazismu
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 24),
                                width: 24,
                                child: Image.asset(
                                    'assets/logos/logo_lazismu_oranye.png'),
                              ),
                              Text(
                                'Tentang LazisMu',
                                style: TextStyle(
                                  color: kYankeesColor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.chevron_right),
                                color: kYankees30Color,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}