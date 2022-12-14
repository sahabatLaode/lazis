import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Permintaan extends StatelessWidget {
  const Permintaan({super.key});

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
          'Permintaan',
          style: TextStyle(
            color: kCulturedColor,
            fontWeight: semibold,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kCrayolaColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Column(
        children: [
          // GAMBAR
          Container(
            margin: const EdgeInsets.only(
              top: 24,
            ),
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/image_permintaan.png',
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 70,
          ),

          // PERMINTAAN AMBULAN
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
                      Image.asset(
                        'assets/icons/icon_ambulan.png',
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(
                        'Permintaan Ambulan',
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
                        '/permintaan-ambulan',
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
                  '/permintaan-ambulan',
                );
              },
            ),
          ),

          // PERMINTAAN DARAH
          // Container(
          //   margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
          //   padding:
          //       const EdgeInsets.only(left: 24, right: 12, top: 24, bottom: 24),
          //   width: double.infinity,
          //   height: 86,
          //   decoration: BoxDecoration(
          //     color: kCulturedColor,
          //     borderRadius: BorderRadius.circular(14),
          //     boxShadow: const [
          //       BoxShadow(
          //         color: Colors.black12,
          //         blurRadius: 2,
          //         spreadRadius: 1,
          //       ),
          //     ],
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Image.asset('assets/icon_darah.png'),
          //           const SizedBox(
          //             width: 24,
          //           ),
          //           Text(
          //             'Permintaan Darah',
          //             style: yankeesStyle.copyWith(
          //               fontSize: 16,
          //               fontWeight: bold,
          //             ),
          //           ),
          //         ],
          //       ),
          //       IconButton(
          //         onPressed: () {
          //           Navigator.pushNamed(context, '/navbar');
          //         },
          //         icon: Icon(
          //           Icons.arrow_circle_right_rounded,
          //           color: kYankeesColor,
          //           size: 32.0,
          //         ),
          //         padding: const EdgeInsets.all(0.0),
          //       ),
          //     ],
          //   ),
          // ),

          const SizedBox(
            height: 24,
          ),

          // PERMINTAAN KOIN SURGA
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
                      Image.asset(
                        'assets/icons/icon_koin.png',
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(
                        'Permintaan Koin Surga',
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
                        '/permintaan-koin',
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
                  '/permintaan-koin',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
