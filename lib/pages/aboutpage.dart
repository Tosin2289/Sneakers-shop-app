import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text("This App Was Made By Phenomes",
                      style: TextStyle(fontSize: 20, color: Colors.grey))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
