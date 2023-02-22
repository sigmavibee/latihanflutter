import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cart/cart_page.dart';
import 'package:flutter_application_1/screens/home/home_page.dart';
import 'package:flutter_application_1/screens/save/save_page.dart';
import 'package:flutter_application_1/screens/user/user_page.dart';
import 'package:flutter_application_1/themes.dart';

class BottomNavBar extends StatefulWidget {
  static const nameRoute = '/';
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    SavePage(),
    CartPage(),
    UserPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        onTap: (i) {
          print(i);
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset('assets/icons/icon-home.png',
                  width: 20,
                  color: _selectedIndex == 0 ? greenColor : greyColor),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/icon-save.png',
                width: 14,
                color: _selectedIndex == 1 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/icon-cart.png',
                width: 20,
                color: _selectedIndex == 2 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/icons/icon-user.png',
                width: 18,
                color: _selectedIndex == 3 ? greenColor : greyColor,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
        bottomNavigationBar: customBottomNav(),
        body: Stack(
            children: _screens
                .asMap()
                .map((i, screen) => MapEntry(
                    i,
                    Offstage(
                      offstage: _selectedIndex != i,
                      child: screen,
                    )))
                .values
                .toList()));
  }
}
