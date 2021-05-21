import 'package:book_app/pages/book_page.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final int rating;

  const Book(
      {Key key,
      @required this.title,
      @required this.author,
      @required this.imagePath,
      @required this.rating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => BookPage())),
      child: Container(
        margin: EdgeInsets.only(top: 15),
        width: 180,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 120,
              child: Image.asset(imagePath),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                children: [
                  Container(
                    width: 90,
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                      title,
                      overflow: TextOverflow.clip,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(author),
                  Spacer(),
                  Container(
                    child: Row(
                      children:
                          List.generate(rating, (index) => Star(size: 15)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
