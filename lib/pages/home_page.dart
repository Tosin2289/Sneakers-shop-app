import 'package:flutter/material.dart';

import 'package:sneakers_shop_app/componets/bottom_nav_bar.dart';
import 'package:sneakers_shop_app/pages/cart_page.dart';
import 'package:sneakers_shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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

  final List _pages = [const Shop(), const Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: (() {
              Scaffold.of(context).openDrawer();
            }),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/blogo.png",
                    width: 200,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    textColor: Colors.white,
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text("Home"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    textColor: Colors.white,
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text("About"),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                textColor: Colors.white,
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
