import 'package:flutter/material.dart';

class PageWithStainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.height);
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: -60,
          top: -40,
          child: Container(
              width: 200,
              height: 200,
              child: Image(image: AssetImage('assets/5.png'))),
        ),
        Positioned(
          left: size.width * 0.7,
          top: size.height * 0.87,
          child: Container(
              width: 200,
              height: 200,
              child: Image(image: AssetImage('assets/5.png'))),
        ),
      ],
    ));
  }
}
