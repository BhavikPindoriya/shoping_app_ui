import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/cart_screen.dart';
import 'package:shoping_app_ui/Screens/favorites_screen.dart';
import 'package:shoping_app_ui/Screens/home_screen.dart';
import 'package:shoping_app_ui/Screens/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false, // click the textfiled then floating action button is the move to up now add this line and not move to floating action button
        body: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
        floatingActionButton: SafeArea(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.qr_code,
              size: 20,
              color: Colors.white,
            ),
            backgroundColor: Color(0xffDB3022),
            shape: CircleBorder(eccentricity: 0.5),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            CupertinoIcons.home,
            CupertinoIcons.cart,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled,
          ],
          inactiveColor: Colors.black.withOpacity(0.5),
          activeColor: const Color(0xffDB3022),
          gapLocation: GapLocation.center,
          activeIndex: pageIndex,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 10,
          iconSize: 25,
          rightCornerRadius: 10,
          elevation: 0,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ));
  }
}
