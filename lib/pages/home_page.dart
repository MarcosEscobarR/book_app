import 'package:book_app/widgets/book.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _SliverMenu());
  }
}

class _SliverMenu extends StatelessWidget {
  final items = [
    SizedBox(
      height: 20,
    ),
    Container(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Mis Libros',
        style: (TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
    ),
    Container(
      child: Divider(
        indent: 13,
      ),
    ),
    _SavedBooks(),
    SizedBox(
      height: 20,
    ),
    _CategorySlider(
      title: 'Populares',
    ),
    SizedBox(
      height: 20,
    ),
    _CategorySlider(
      title: 'Recomendados',
    ),
    SizedBox(
      height: 20,
    ),
    _CategorySlider(
      title: 'Ultimos Agregados',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
            floating: true,
            delegate: CustomAppbar(
                child: AppbarSearcher(), maxHeight: 100, minHeight: 80)),
        SliverList(delegate: SliverChildListDelegate(items))
      ],
    );
  }
}

class _EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Aun no tienes libros!',
              style: TextStyle(color: Colors.black45, fontSize: 35),
            ),
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(0.3),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ],
      ),
    );
  }
}

class _CategorySlider extends StatelessWidget {
  final String title;

  const _CategorySlider({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Book> items = [
      Book(
        title: 'Harry Potter Y la piedra Filosofal',
        author: 'J K Rowling',
        rating: 3,
        imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J K Rowling',
        rating: 5,
        imagePath: 'assets/1529337843_719213_1529340643_sumario_normal.jpg',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J K Rowling',
        rating: 4,
        imagePath: 'assets/c07f0335aab7d6b4d32d90ab7ba9e7d5.jpg',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J K Rowling',
        rating: 2,
        imagePath: 'assets/d27902e58a5cc8dc672ac81f5129255b.jpg',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J K Rowling',
        rating: 1,
        imagePath:
            'assets/Harry-Potter-Piedra-Filosofal-Hufflepuff1-BooksLoversSpanish.JPG',
      ),
      Book(
        title: 'Harry Potter',
        author: 'J K Rowling',
        rating: 0,
        imagePath: 'assets/portada14-1.jpg',
      ),
    ];
    return Container(
      width: double.infinity,
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ver mas',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 15),
                  ))
            ],
          ),
          Expanded(
            child: MediaQuery.removePadding(
                removeTop: true,
                removeBottom: true,
                context: context,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, i) {
                      return items[i];
                    })),
          )
        ],
      ),
    );
  }
}

class _SavedBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: _SavedBook(),
    );
  }
}

class _SavedBook extends StatelessWidget {
  List<Widget> items = [
    _Book(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    _Book(
      title: 'Harry Potter',
      author: 'J K Rowling',
      rating: 5,
      imagePath: 'assets/1529337843_719213_1529340643_sumario_normal.jpg',
    ),
    _Book(
      title: 'Harry Potter',
      author: 'J K Rowling',
      rating: 4,
      imagePath: 'assets/c07f0335aab7d6b4d32d90ab7ba9e7d5.jpg',
    ),
    _Book(
      title: 'Harry Potter',
      author: 'J K Rowling',
      rating: 2,
      imagePath: 'assets/d27902e58a5cc8dc672ac81f5129255b.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    items.add(_AddBook());
    return ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => items[i]);
  }
}

class _Book extends StatelessWidget {
  final String title;
  final String author;
  final int rating;
  final String imagePath;

  const _Book(
      {Key key,
      @required this.title,
      @required this.author,
      @required this.rating,
      @required this.imagePath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            height: 150,
            child: Image.asset(imagePath),
          ),
          Container(
            width: 80,
            child: Text(
              title,
              overflow: TextOverflow.clip,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(author),
          Row(
            children: List.generate(rating, (index) => Start(size: 10)),
          )
        ],
      ),
    );
  }
}

class _AddBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid, color: Colors.grey, width: 3)),
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
