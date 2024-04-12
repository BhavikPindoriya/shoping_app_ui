import 'package:flutter/material.dart';
import 'package:shoping_app_ui/Screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ECommerce sopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xffDB3022)),
      home: SplashScreen(),
    );
  }
}
