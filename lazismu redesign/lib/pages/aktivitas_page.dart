import 'package:flutter/material.dart';
import 'package:lazismu/theme.dart';

class UserAktivitas extends StatelessWidget {
  const UserAktivitas({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kCultured95Color,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kCultured95Color,
          title: Text(
            'Aktivitas',
            style: yankeesStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Dalam Proses',
                    style: yankeesStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Selesai',
                    style: yankeesStyle.copyWith(
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
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 220,
                          child: Image.asset('assets/image_no_activity.png'),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Text(
                          'Belum ada aktivitas yang dilakukan.',
                          style: yankeesStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Mulai dengan Donasi',
                            style: blueStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 220,
                          child: Image.asset('assets/image_no_activity.png'),
                        ),
                        SizedBox(
                          height: 48,
                        ),
                        Text(
                          'Belum ada aktivitas yang dilakukan.',
                          style: yankeesStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Mulai dengan Donasi',
                            style: blueStyle.copyWith(
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
