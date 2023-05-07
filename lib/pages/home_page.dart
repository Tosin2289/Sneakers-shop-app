import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../componets/bottom_nav_bar.dart';
import 'aboutpage.dart';
import 'cart_page.dart';
import 'contact_page.dart';
import 'shop_page.dart';

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

  void _Contact() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return ContactPage();
    })));
  }

  void _About() {
    Navigator.push(context, MaterialPageRoute(builder: ((context) {
      return AboutPage();
    })));
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
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
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
                ListTile(
                  onTap: _Contact,
                  textColor: Colors.white,
                  leading: const Icon(
                    Icons.contact_page,
                    color: Colors.white,
                  ),
                  title: Text("Contact"),
                ),
                ListTile(
                  onTap: _About,
                  textColor: Colors.white,
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text("About"),
                ),
              ],
            ),
            SizedBox(height: 100),
            ListTile(
              textColor: Colors.white,
              onTap: (() {
                SystemNavigator.pop();
              }),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
