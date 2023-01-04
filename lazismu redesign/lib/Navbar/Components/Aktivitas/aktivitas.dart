import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazismu/theme.dart';

class Aktivitas extends StatelessWidget {
  const Aktivitas({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kCulturedColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.5,
          backgroundColor: kCulturedColor,
          title: Text(
            'Aktivitas',
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
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Dalam Proses',
                    style: TextStyle(
                      color: kYankeesColor,
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Selesai',
                    style: TextStyle(
                      color: kYankeesColor,
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 220,
                        child:
                            Image.asset('assets/images/image_no_activity.png'),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Text(
                        'Belum ada aktivitas yang dilakukan.',
                        style: TextStyle(
                          color: kYankeesColor,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Mulai dengan Donasi',
                          style: TextStyle(
                            color: kBlueColor,
                            fontSize: 16,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 220,
                          child: Image.asset(
                              'assets/images/image_no_activity.png'),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Text(
                          'Belum ada aktivitas yang dilakukan.',
                          style: TextStyle(
                            color: kYankeesColor,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Mulai dengan Donasi',
                            style: TextStyle(
                              color: kBlueColor,
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
