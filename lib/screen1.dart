import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _State();
}

class _State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff031f2b),
      body: Column(
        children: [
          Flexible(flex: 3, child: Column()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/images/splash_img.png")),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Oddiy hayotdan qoching",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Atrofingizdagi ajoyib tajribalarni kashf eting\nva sizni qiziqarli yashashga majbur qiling!",
            style: TextStyle(color: Colors.white),
          ),
          Flexible(flex: 3, child: Column()),
          ElevatedButton(
              onPressed: () {},
              child: Text("boshladik")),
          Flexible(flex: 1, child: Column()),
        ],
      ),
    ));
  }
}
