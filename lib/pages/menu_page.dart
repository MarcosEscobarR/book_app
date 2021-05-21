import 'package:book_app/helpers/menu_pages.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final _menuPages = MenusPages;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _menuPages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Categorias"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: "Carrito"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
        selectedItemColor: Colors.greenAccent[700],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
