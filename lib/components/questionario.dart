import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';
import 'package:projeto_perguntas/components/resposta.dart';


class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(bool) resposta;

  Questionario(
      this.perguntas, this.perguntaSelecionada, this.resposta);

  bool get existePergunta {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String,Object>> respostas =
        existePergunta ? perguntas[perguntaSelecionada]['respostas'] : null;

    return Column(children: <Widget>[
      Questao(perguntas[perguntaSelecionada]['texto']),
      ...respostas
          .map((resp) => Resposta(
                resp['alternativa'],
                () => resposta(resp['resposta']),
              )).toList()
    ]);
  }
}
