import 'package:flutter/material.dart';
import 'package:sneakers_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    "assets/blogo.png",
                    height: 240,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  "Just Do It",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  "Brand new sneakers and custom kicks made with premium quality.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 48,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return HomePage();
                    })));
                  }),
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
