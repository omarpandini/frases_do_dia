import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _novaFrase = '';

  final _frases = [
    'Frase 1',
    'Frase 2',
    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
  ];

  void _gerarFrase() {
    setState(() {
      var num = Random().nextInt(_frases.length);
      _novaFrase = _frases[num];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          // decoration:
          //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo.png',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Clique Abaixo Para Gerar Uma Frase!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25),
                ),
              ),
              Text(
                '$_novaFrase',
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
              ElevatedButton(
                  onPressed: () {
                    _gerarFrase();
                  },
                  child: Text(
                    'Nova Frase',
                    style: TextStyle(fontSize: 20),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green))
            ],
          ),
        ),
      ),
    );
  }
}
