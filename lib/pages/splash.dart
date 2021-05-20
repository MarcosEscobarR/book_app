import 'dart:async';

import 'package:book_app/pages/login.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageWithStainsPage(),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.2,
                ),
                Container(
                    width: 300,
                    height: 300,
                    child: Image(image: AssetImage('assets/6.png'))),
                Container(
                    width: 200,
                    height: 200,
                    child: Image(image: AssetImage('assets/1.png')))
              ],
            ),
          )
        ],
      ),
    );
  }
}
