import 'package:flutter/material.dart';
import 'package:sneakers_shop_app/pages/cart_page.dart';
import 'package:sneakers_shop_app/pages/home_page.dart';
import 'package:sneakers_shop_app/pages/intropage.dart';

import 'pages/shop_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
