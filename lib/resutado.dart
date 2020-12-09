import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() qndoReinisciaQuestionario;

  Resultado(this.pontuacao, this.qndoReinisciaQuestionario);

  String get freseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 16) {
      return 'Você é muito bom!';
    } else if (pontuacao < 16) {
      return 'impressionante!';
    } else {
      return 'nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Center(
          child: Text(
          freseResultado,
          style: TextStyle(fontSize: 28),
      )
      ),

      FlatButton(
        child: Text('Reinisciar?', 
        style: TextStyle(fontSize: 18)
        ),
        textColor: Colors.blue,
        onPressed: qndoReinisciaQuestionario,
      )

      ]
    );
  }
}
