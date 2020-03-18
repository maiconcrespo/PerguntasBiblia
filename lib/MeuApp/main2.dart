import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/MeuApp/questao2.dart';
import 'package:projeto_perguntas/MeuApp/questionario2.dart';
import 'package:projeto_perguntas/MeuApp/resposta2.dart';
import 'package:projeto_perguntas/MeuApp/resultado2.dart';

class PerguntaAppPersonalizado extends StatefulWidget {
  @override
  _PerguntaAppPersonalizadoState createState() =>
      _PerguntaAppPersonalizadoState();
}

class _PerguntaAppPersonalizadoState extends State<PerguntaAppPersonalizado> {
  var _perguntaSelecionada = 0;
  var totalAcerto = 0;
  final _perguntas = const [
    {
      'texto': '1 - Quantas pragas foram enviadas ao Egito?',
      'respostas': [
        {'alternativa': '7 Pragas', 'resposta': false},
        {'alternativa': '10 Pragas', 'resposta': true},
        {'alternativa': '3 Pragas', 'resposta': false},
      ]
    },
    {
      'texto': '2 - Quem foi lançado na cova dos leões?',
      'respostas': [
        {'alternativa': 'Paulo', 'resposta': false},
        {'alternativa': 'José', 'resposta': false},
        {'alternativa': 'Daniel', 'resposta': true},
      ]
    },
    {
      'texto': '3 - Qual instrumento Davi gostava de tocar?',
      'respostas': [
        {'alternativa': 'Tambor', 'resposta': false},
        {'alternativa': 'Harpa', 'resposta': true},
        {'alternativa': 'Flauta', 'resposta': false},
      ]
    },
    {
      'texto': '4 - Quando Jesus nasceu, onde Ele foi colocado?',
      'respostas': [
        {'alternativa': 'Foi colocado em uma cama.', 'resposta': false},
        {'alternativa': 'Foi colocado em uma manjedoura.', 'resposta': true},
        {'alternativa': 'Foi colocado em um trono.', 'resposta': false},
      ]
    },
    {
      'texto':
          '5 - Quando a mulher com fluxo de sangue tocou nas vestes de Jesus, no que ela pensava?',
      'respostas': [
        {
          'alternativa':
              '"Se eu tão somente tocar em seu manto, ficarei curada"',
          'resposta': true
        },
        {
          'alternativa':
              '"Tenho que chamar a atenção de Jesus para ser curada"',
          'resposta': false
        },
        {
          'alternativa': '"Tenho que interromper o caminho de Jesus"',
          'resposta': false
        },
      ]
    }
  ];

  bool get existePergunta {
    return _perguntaSelecionada < _perguntas.length;
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


void reiniciar(){
  setState(() {    
  _perguntaSelecionada = 0;
  totalAcerto = 0;
  });
}


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(child: Text("Perguntas Biblicas !!")),
        ),
        body: existePergunta
            ? QuestionarioPersonalizado(
                _perguntas,
                _perguntaSelecionada,
                _resposta,
              )
            : ResultadoPersonalizado(totalAcerto,reiniciar),
      ),
    );
  }
}
