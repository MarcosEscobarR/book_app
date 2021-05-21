import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final double size;

  const Start({Key key,  @required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, size: size, color: Colors.yellow);
  }
}
