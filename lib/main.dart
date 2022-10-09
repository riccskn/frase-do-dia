import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: HomeStatefulWidget()));
}

class HomeStatefulWidget extends StatefulWidget {
  const HomeStatefulWidget({Key? key}) : super(key: key);

  @override
  State<HomeStatefulWidget> createState() => _HomeStatefulWidgetState();
}

class _HomeStatefulWidgetState extends State<HomeStatefulWidget> {
  final _phrases = [
    "Trabalha como se vivesses para sempre. Ama como se fosses morrer hoje.",
    "Não vivemos para comer, mas comemos para viver.",
    "Viver significa lutar.",
    "Dedica-se a esperar o futuro apenas quem não sabe viver o presente.",
    "Aquele que vive de combater um inimigo tem interesse em o deixar com vida."
  ];

  var _currentPhrase = "Clique abaixo para gerar uma frase!";

  void _generatePhrase() {
    var index = Random().nextInt(_phrases.length);
    setState(() {
      _currentPhrase = _phrases[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _currentPhrase,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: _generatePhrase,
              child: const Text(
                "Nova Frase",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
            )
          ],
        ),
      ),
    );
  }
}
