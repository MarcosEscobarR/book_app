import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final double size;

  const Star({Key key,  @required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, size: size, color: Colors.yellow);
  }
}
