import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final texto;

  final texto2;

  Questao(this.texto, this.texto2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
