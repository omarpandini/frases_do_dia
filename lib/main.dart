import 'package:flutter/material.dart';

void main() {
  runApp(myAppV1());
}

Widget myAppV1() {
  const text1 = Text(
    "Neque porro quisquam estaa",
    textAlign: TextAlign.justify,
    style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.normal,
        letterSpacing: 2,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.solid),
  );

  const text2 = Text(
    "Texto 2",
    textAlign: TextAlign.justify,
    style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.normal,
        letterSpacing: 2,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationStyle: TextDecorationStyle.solid),
  );

  return MaterialApp(
    title: "Frases do Dia",
    home: Container(
      padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
      margin: const EdgeInsets.all(30),
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.black)),
      //color: Colors.amber,
      child: Column(
        children: const [
          //Botão simples
          /*
          FloatingActionButton(
            onPressed: imprimir,
            child: Text(
              "Clique Aqui",
              style: TextStyle(fontSize: 10),
            ),
          )*/

          // Textos / Estilos
          text1,
          Padding(padding: EdgeInsets.all(30)),
          text2
        ],
      ),
    ),
    //home: Container(color: Colors.white,),
  );
}

void imprimir() {
  print("clicou");
}
