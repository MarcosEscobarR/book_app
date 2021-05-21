import 'package:book_app/models/bookModel.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      _TopAuthor(),
      Divider(),
      Container(
          height: MediaQuery.of(context).size.height - 320,
          width: MediaQuery.of(context).size.width,
          child: _Tabs())
    ];
    return Scaffold(
        body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
            floating: true,
            delegate: CustomAppbar(
                child: AppbarSearcher(), maxHeight: 100, minHeight: 80)),
        SliverList(delegate: SliverChildListDelegate(items))
      ],
    ));
  }
}

class _TopAuthor extends StatelessWidget {
  final List<Widget> authors = [
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
    _Author(
      name: 'Juan Perez',
      imagePath: 'assets/man.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top de Autores",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ver mas",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 15),
                  ))
            ],
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: authors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => authors[index],
            ),
          )
        ],
      ),
    );
  }
}

class _Author extends StatelessWidget {
  final String imagePath;
  final String name;
  const _Author({
    Key key,
    @required this.imagePath,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.greenAccent])),
              child: Image.asset('assets/man.png'),
            ),
          ),
          Container(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  final List<BookModel> books = [
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/1529337843_719213_1529340643_sumario_normal.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/c07f0335aab7d6b4d32d90ab7ba9e7d5.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/d27902e58a5cc8dc672ac81f5129255b.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
    BookModel(
      title: 'Harry Potter Y la piedra Filosofal',
      author: 'J K Rowling',
      rating: 3,
      imagePath: 'assets/9cef638f1327bed70d7f15fa71c0b79f.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
                indicatorColor: Colors.green,
                automaticIndicatorColorAdjustment: true,
                labelColor: Colors.greenAccent[700],
                unselectedLabelStyle: TextStyle(fontSize: 15),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                isScrollable: true,
                physics: BouncingScrollPhysics(),
                indicator: _CircleTabIndicator(color: Colors.green, radius: 3),
                tabs: [
                  Tab(
                    text: 'Negocios',
                  ),
                  Tab(
                    text: 'Educacion',
                  ),
                  Tab(
                    text: 'Musica',
                  ),
                  Tab(
                    text: 'Novelas',
                  ),
                ]),
            Expanded(
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CategoryGrid(
                      books: books,
                    ),
                    CategoryGrid(
                      books: books,
                    ),
                    CategoryGrid(
                      books: books,
                    ),
                    CategoryGrid(
                      books: books,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class _CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  _CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
