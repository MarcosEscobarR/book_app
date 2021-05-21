import 'package:book_app/pages/login.dart';
import 'package:book_app/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Playfair Display'),
      // home: SplashPage(),
      home: LoginPage(),
    );
  }
  // This widget is the root of your application.

}
