import 'package:projeto_perguntas/model/perguntas.dart';
import 'package:projeto_perguntas/model/respostas.dart';

final _todasPerguntas = [
  Perguntas('Quantas pragas foram enviadas ao Egito?', [
    Respostas('7 Pragas', false),
    Respostas('10 Pragas', true),
    Respostas('3 Pragas', false),
  ]),
  Perguntas('Quem foi lançado na cova dos leões?', [
    Respostas('Paulo', false),
    Respostas('José', false),
    Respostas('Daniel', true),
  ]),
  Perguntas('Qual instrumento Davi gostava de tocar?', [
    Respostas('Tambor', false),
    Respostas('Harpa', true),
    Respostas('Flauta', false),
  ]),
  Perguntas('Quando Jesus nasceu, onde Ele foi colocado?', [
    Respostas('Foi colocado em uma cama.', false),
    Respostas('Foi colocado em uma manjedoura.', true),
    Respostas('Foi colocado em um trono.', false),
  ]),
    Perguntas('Quando a mulher com fluxo de sangue tocou nas vestes de Jesus, no que ela pensava?', [
    Respostas('"Se eu tão somente tocar em seu manto, ficarei curada"', true),
    Respostas('"Tenho que chamar a atenção de Jesus para ser curada"',false ),
    Respostas('"Tenho que interromper o caminho de Jesus"', false),
  ]),
];
