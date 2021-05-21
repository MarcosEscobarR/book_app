import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _Background(),
          Positioned(
              top: 40,
              left: 15,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                ),
              )),
          _BookAndOptions(),
        ],
      ),
    );
  }
}

class _BookAndOptions extends StatelessWidget {
  const _BookAndOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        _BookCover(),
        SizedBox(
          height: 20,
        ),
        _Options(),
        SizedBox(
          height: 20,
        ),
        _DescriptionBox()
      ],
    );
  }
}

class _DescriptionBox extends StatelessWidget {
  const _DescriptionBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: _Description(),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: -6)],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: size.width * 0.8,
                  child: Text(
                    'El Niño en el Pijama de Rayas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  width: size.width * 0.8,
                  child: Text(
                    'John Boyne',
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => Star(size: 25)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "LLorem ipsum dolor sit amet consectetur adipisicing elit. MaximeLorem ipsum dolor sit amet consectetur adipisicing elit. MaximeLorem ipsum dolor sit amet consectetur adipisicing elit. MaximeLorem ipsum dolor sit amet consectetur adipisicing elit. MaximeLorem ipsum dolor sit amet consectetur adipisicing elit. MaximeLorem ipsum dolor sit amet consectetur adipisicing elit. Maximeorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueGrey[700], fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _IconButton(
          icon: Icons.favorite,
        ),
        SizedBox(
          width: 20,
        ),
        _IconButton(icon: Icons.shopping_cart),
        SizedBox(
          width: 20,
        ),
        _IconButton(
          icon: Icons.share,
        ),
      ],
    );
  }
}

class _BookCover extends StatelessWidget {
  const _BookCover({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          spreadRadius: -6,
        )
      ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 300,
            child: Image.asset(
              'assets/d27902e58a5cc8dc672ac81f5129255b.jpg',
              fit: BoxFit.contain,
            ),
          )),
    );
  }
}

class _IconButton extends StatelessWidget {
  final IconData icon;
  const _IconButton({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.orange),
      child: IconButton(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: () {}),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [Colors.green[100], Colors.greenAccent.withOpacity(0.1)]),
      ),
    );
  }
}
