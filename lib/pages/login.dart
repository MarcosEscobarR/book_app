import 'package:book_app/pages/menu_page.dart';
import 'package:book_app/pages/register.dart';
import 'package:book_app/widgets/custom_text_field.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.greenAccent,
        ),
        Positioned(
          child: Container(
            width: 350,
            height: 350,
            child: Image(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/1.png'),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.4,
          child: Container(
            padding: EdgeInsets.only(top: 25),
            child: _LoginForm(),
            width: size.width,
            height: size.height * 0.6,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
          ),
        )
      ],
    ));
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: ListView(
        children: [
          Text(
            "¡Bienvenido!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(label: 'Nombre'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            label: 'Contraseña',
            obscureText: true,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
              width: 300,
              heigth: 50,
              text: "Aceptar",
              onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuPage())),
              color: Colors.greenAccent[400]),
          SizedBox(
            height: 20,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ClipRRect(
              
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image(image: AssetImage('assets/GoogleSignUpDark.png')))),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => RegisterPage())),
              child: Text(
                "Registrarme",
                style: TextStyle(color: Colors.greenAccent[400], fontSize: 20),
              ))
        ],
      ),
    );
  }
}
