import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/questionario.dart';
import 'package:projeto_perguntas/components/resultado.dart';
import 'package:projeto_perguntas/model/listaPerguntasFixa.dart';

class PerguntasUser extends StatefulWidget {
  @override
  _PerguntasUserState createState() => _PerguntasUserState();
}

class _PerguntasUserState extends State<PerguntasUser> {
  var _perguntaSelecionada = 0;
  var totalAcerto = 0;



  bool get existePergunta {
    return _perguntaSelecionada < todasPerguntas.length;
  }

  void _resposta(bool resposta) {
    if (resposta) {
      totalAcerto += 1;
    }
    print(resposta);
    setState(() {
      _perguntaSelecionada++;
    });
  }

  void reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      totalAcerto = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return existePergunta
        ? Questionario(            
            _perguntaSelecionada,
            _resposta,
          )
        : Resultado(totalAcerto, reiniciar);
  }
}
