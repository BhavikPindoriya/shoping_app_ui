import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/onbording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnbordingScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('assets/images/image2.jpg'),
                fit: BoxFit.cover,
                opacity: 0.5),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 250,
                color: Color(0xffDB3022),
              ),
              Text(
                'DP SHOP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )
            ],
          )),
    );
  }
}
