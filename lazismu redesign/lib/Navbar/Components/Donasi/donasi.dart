import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Donasi extends StatelessWidget {
  const Donasi({super.key});

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
          'Donasi',
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
          Column(
            children: [
              // ILUSTRASI
              Container(
                margin: const EdgeInsets.only(
                  top: 24,
                ),
                width: double.infinity,
                height: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image_donasi.png',
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 70,
              ),

              // MENU ZAKAT
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 12,
                  top: 24,
                  bottom: 24,
                ),
                width: double.infinity,
                height: 86,
                decoration: BoxDecoration(
                  color: kCulturedColor,
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 24,
                            ),
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: kCrayolaColor,
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                            child: Icon(
                              Icons.card_giftcard_outlined,
                              color: kCulturedColor,
                            ),
                          ),
                          Text(
                            'Zakat',
                            style: TextStyle(
                              color: kYankeesColor,
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/donasi-zakat',
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_right_rounded,
                          color: kYankeesColor,
                          size: 32.0,
                        ),
                        padding: const EdgeInsets.all(
                          0.0,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/donasi-zakat',
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 24,
              ),

              // MENU INFAQ/SEDEKAH
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 12,
                  top: 24,
                  bottom: 24,
                ),
                width: double.infinity,
                height: 86,
                decoration: BoxDecoration(
                  color: kCulturedColor,
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 24,
                            ),
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: kCrayolaColor,
                              borderRadius: BorderRadius.circular(
                                100,
                              ),
                            ),
                            child: Icon(
                              Icons.card_giftcard_outlined,
                              color: kCulturedColor,
                            ),
                          ),
                          Text(
                            'Infaq/Sedekah',
                            style: TextStyle(
                              color: kYankeesColor,
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/donasi-infaq',
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_right_rounded,
                          color: kYankeesColor,
                          size: 32.0,
                        ),
                        padding: const EdgeInsets.all(
                          0.0,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/donasi-infaq',
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
