import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;
  Resultado(this.pontuacao, this.reiniciar);

  String get fraseResultado {
    if (pontuacao <= 20) {
      return "parabéns você pontuou: ${pontuacao}";
    } else {
      return "Excelente você pontuou: ${pontuacao}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[        
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        ),
        FlatButton(onPressed: reiniciar, child: Text("Reiniciar?"))
      ],
    );
  }
}
