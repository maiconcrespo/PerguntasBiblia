import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/MeuApp/main2.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaAppPersonalizado());

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita ?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Amarelo', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 7},
        {'texto': 'Rosa', 'pontuacao': 3},
      ]
    },
    {
      'texto': 'Qual o seu animal Favorito ?',
      'respostas': [
        {'texto': 'Leão', 'pontuacao': 5},
        {'texto': 'Zebra', 'pontuacao': 10},
        {'texto': 'Girafa', 'pontuacao': 2},
        {'texto': 'Onça', 'pontuacao': 3},
      ]
    },
    {
      'texto': 'Qual sua linguagem Favorita',
      'respostas': [
        {'texto': 'JavaScript', 'pontuacao': 5},
        {'texto': 'C#', 'pontuacao': 10},
        {'texto': 'Flutter', 'pontuacao': 7},
        {'texto': 'Dart', 'pontuacao': 4},
      ]
    }
  ];

  bool get existePergunta {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (existePergunta) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  void reiniciar()
  {
    setState(() {      
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Perguntas !!")),
        ),
        body: existePergunta
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal,reiniciar),
      ),
    );
  }
}
