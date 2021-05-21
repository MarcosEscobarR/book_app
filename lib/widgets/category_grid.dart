import 'package:book_app/models/bookModel.dart';
import 'package:book_app/pages/book_page.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  final List<BookModel> books;

  const CategoryGrid({Key key, this.books}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: false,
      scrollDirection: Axis.vertical,
      itemCount: books.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.6, crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) => _Book(
        bookModel: books[index],
      ),
    );
  }
}

class _Book extends StatelessWidget {
  final BookModel bookModel;

  const _Book({Key key, this.bookModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => BookPage())),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 150,
            child: Image.asset(bookModel.imagePath),
          ),
          Container(
            width: 200,
            child: Text(
              bookModel.title,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 200,
            child: Text(
              bookModel.author,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                List.generate(bookModel.rating, (index) => Star(size: 15)),
          )
        ],
      ),
    );
  }
}
