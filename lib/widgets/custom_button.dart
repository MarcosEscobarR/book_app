import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double heigth;
  final String text;
  final Function onPress;
  final Color color;

  const CustomButton(
      {Key key,
      @required this.width,
      @required this.heigth,
      @required this.text,
      @required this.onPress,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: heigth,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
