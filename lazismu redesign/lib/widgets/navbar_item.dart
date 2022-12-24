import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lazismu/pages/aktivitas_page.dart';
import 'package:lazismu/pages/donasi_page.dart';
import 'package:lazismu/pages/home_page.dart';
import 'package:lazismu/pages/lainnya_page.dart';
import 'package:lazismu/pages/permintaan_page.dart';
import 'package:lazismu/theme.dart';

class NavbarItem extends StatefulWidget {
  const NavbarItem({super.key});

  @override
  State<NavbarItem> createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    UserHome(),
    UserPermintaan(),
    UserDonasi(),
    UserAktivitas(),
    UserLainnya(),
  ];
  final Map<BottomNavigationBar, GlobalKey<NavigatorState>> navigatorKeys = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCultured95Color,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kCulturedColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: GNav(
              backgroundColor: kCulturedColor,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: kCulturedColor,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: kCrayolaColor,
              color: kYankees50Color,
              textStyle: TextStyle(
                color: kCulturedColor,
                fontSize: 16,
                fontWeight: bold,
              ),
              tabBorderRadius: 14,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Beranda',
                ),
                GButton(
                  icon: Icons.health_and_safety_outlined,
                  text: 'Permintaan',
                ),
                GButton(
                  icon: Icons.card_giftcard_rounded,
                  text: 'Donasi',
                ),
                GButton(
                  icon: Icons.task_outlined,
                  text: 'Aktivitas',
                ),
                GButton(
                  icon: Icons.settings_outlined,
                  text: 'Lainnya',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
