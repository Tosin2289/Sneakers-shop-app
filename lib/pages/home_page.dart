import 'package:flutter/material.dart';
import 'package:sneakers_shop_app/componets/bottom_nav_bar.dart';
import 'package:sneakers_shop_app/pages/cart_page.dart';
import 'package:sneakers_shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [Shop(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
