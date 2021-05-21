import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarSearcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      height: 280,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))))),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications)
        ],
      ),
    );
  }
}
