import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop_app/models/cart.dart';
import 'package:sneakers_shop_app/pages/cart_page.dart';

import 'package:sneakers_shop_app/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ShoeShop()),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
