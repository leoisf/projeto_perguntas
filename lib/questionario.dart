import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntasRespostas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario(
      {@required this.perguntasRespostas,
      @required this.perguntaSelecionada,
      @required this.quandoResponder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntasRespostas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntasRespostas[perguntaSelecionada]['respostas']
        : null;
    return Column(
      children: <Widget>[
        Questao(perguntasRespostas[perguntaSelecionada]['pergunta']),
        ...respostas.map((resp) {
          return Resposta(
              resp['texto'], 
              () => quandoResponder(resp['pontuacao']),
              );
        }).toList(),
      ],
    );
  }
}
