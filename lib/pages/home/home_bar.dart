import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/cart_history.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/util/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    const MainFoodPage(),
    Container(child: Center(child: Text("Next page"))),
    const CartHistory(),
    Container(child: Center(child: Text("Profile page"))),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey.shade400,
            activeColor: AppColors.mainColor,
            tabBackgroundColor: Colors.grey.shade600,
            gap: 8,
            onTabChange: onTapNav,
            padding: const EdgeInsets.all(10),
            tabs: const [
              GButton(icon: CupertinoIcons.home, text: 'Home'),
              GButton(icon: CupertinoIcons.archivebox_fill, text: 'History'),
              GButton(icon: CupertinoIcons.cart_fill, text: 'Cart'),
              GButton(icon: CupertinoIcons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
