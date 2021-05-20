import 'package:book_app/widgets/custom_text_field.dart';
import 'package:book_app/widgets/routes_widgets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        PageWithStainsPage(),
        Card(
          elevation: 4,
          child: Container(
            height: size.height * 0.8,
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Registrarme',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(label: 'Nombre y Apellido'),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      label: 'Contraseña',
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(label: 'Telefono'),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(label: 'Email'),
                    SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        width: 200,
                        heigth: 50,
                        text: 'Aceptar',
                        onPress: () {},
                        color: Colors.greenAccent[400])
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
