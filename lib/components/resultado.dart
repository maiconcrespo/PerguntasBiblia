import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int acertos;
  final void Function() reiniciar;
  Resultado(this.acertos, this.reiniciar);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "Total de Acertos: ${acertos}",
            style: TextStyle(fontSize: 40),
          ),
        ),
        FlatButton(
            onPressed: reiniciar,
            child: Text(
              "Reinicar ?",
              style: TextStyle(fontSize: 20),
            ))
      ],
    );
  }
}
