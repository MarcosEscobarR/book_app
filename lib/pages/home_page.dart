import 'package:book_app/pages/book_page.dart';
import 'package:book_app/widgets/book.dart';
import 'package:book_app/widgets/carousel_page.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: _Drawer(), body: _SliverMenu());
  }
}

class _Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(),
    );
  }
}

class _SliverMenu extends StatelessWidget {
  final items = [
    Container(height: 200, child: _PhraseCarousel()),
    SizedBox(
      height: 20,
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
    return Stack(
      children: [
        CustomScrollView(
          
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
            
                floating: true,
                delegate: CustomAppbar(
                    child: AppbarSearcher(), maxHeight: 100, minHeight: 80)),
            SliverList(delegate: SliverChildListDelegate(items))
          ],
        ),
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
      height: 550,
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
                        childAspectRatio: 1.3, crossAxisCount: 2),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 250,
          child: _SavedBook(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: Colors.greenAccent.withOpacity(0.1),
          ),
        ),
      ],
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
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => BookPage())),
      child: Container(
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
            Spacer(),
            Row(
              children: List.generate(rating, (index) => Star(size: 15)),
            )
          ],
        ),
      ),
    );
  }
}

class _AddBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 80, right: 10),
        child: Container(
          width: 100,
          child: DottedBorder(
              color: Colors.grey,
              strokeWidth: 2,
              child: Center(child: Icon(Icons.add))),
        ));
  }
}

class _PhraseCarousel extends StatelessWidget {
  final List<Widget> phrases = [
    _Phrase(
      phrase: 'Hola que tal',
      author: 'fulano1',
      color: Colors.green.withOpacity(0.4),
    ),
    _Phrase(
      phrase: 'Hola que tal',
      author: 'fulano2',
      color: Colors.blueGrey[700].withOpacity(0.7),
    ),
    _Phrase(
      phrase: 'Hola que tal',
      author: 'fulano3',
      color: Colors.red[700].withOpacity(0.7),
    ),
    _Phrase(
      phrase: 'Hola que tal',
      author: 'fulano4',
      color: Colors.yellow[700].withOpacity(0.7),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselPage(
      primaryColor: Colors.greenAccent,
      secondaryColor: Colors.grey,
      primaryBullet: 10,
      secondaryBullet: 10,
      slides: phrases,
    );
  }
}

class _Phrase extends StatelessWidget {
  final Color color;
  final String phrase;
  final String author;

  const _Phrase(
      {Key key,
      @required this.color,
      @required this.phrase,
      @required this.author})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              phrase,
              style: TextStyle(
                  fontFamily: 'Playfair Display',
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Positioned(
            top: 120,
            left: MediaQuery.of(context).size.width - 100,
            child: Text(
              author,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
