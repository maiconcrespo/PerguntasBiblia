import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questao.dart';
import 'package:projeto_perguntas/components/resposta.dart';
import 'package:projeto_perguntas/model/listaPerguntasFixa.dart';
import 'package:projeto_perguntas/model/respostas.dart';


class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final void Function(bool) resposta;

  Questionario(this.perguntaSelecionada, this.resposta);

  bool get existePergunta {
    return perguntaSelecionada < todasPerguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Respostas> respostas =
        existePergunta ? todasPerguntas[perguntaSelecionada].respostas : null;

    return Column(children: <Widget>[
      Questao(todasPerguntas[perguntaSelecionada].pergunta),
      ...respostas
          .map((resp) => Resposta(
                resp.alternativa,
                () => resposta(resp.resultado),
              )).toList()
    ]);
  }
}
