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
    _EmptyCart(),
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
            delegate: CustomAppbar(
                child: _AppbarChild(), maxHeight: 180, minHeight: 150)),
        SliverList(delegate: SliverChildListDelegate(items))
      ],
    );
  }
}

class _AppbarChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 15, left: 10),
                child: Text(
                  '¡Bienvenido!',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 220,
                child: Text(
                  'Tus Libros Preferidos LLegan a tus Manos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.clip,
                ),
              )
            ],
          ),
          Positioned(
            left: MediaQuery.of(context).size.width - 200,
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage('assets/4.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Aun no tienes libros!',
          style: TextStyle(color: Colors.black45, fontSize: 35),
        ),
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.greenAccent.withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}

class _CategorySlider extends StatelessWidget {
  final String title;

  const _CategorySlider({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                _Slide(),
                _Slide(),
                _Slide(),
                _Slide(),
                _Slide(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: 140,
      height: 200,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 140,
            child: Image.asset(
                'assets/Harry-Potter-Piedra-Filosofal-Hufflepuff1-BooksLoversSpanish.JPG'),
          ),
          Text(
            "Harry Potter",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
