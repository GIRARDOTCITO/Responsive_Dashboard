import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //vamos a retornar nuestras imagenes las cuales dan un bonito estilo en la parte superior de nuestro proyecto
          Expanded(child: Image.asset('planta_1.jpg')),
          Expanded(child: Image.asset('planta_2.jpg')),
          Expanded(child: Image.asset('planta_3.png')),
          Expanded(child: Image.asset('planta_4.jpg')),
        ],
      ),
    );

  }
}
