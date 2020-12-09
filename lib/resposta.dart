import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
