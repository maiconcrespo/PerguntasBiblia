import 'package:flutter/material.dart';

class QuestaoPersonalisada extends StatelessWidget {
  final String texto;
  QuestaoPersonalisada(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(            
      width: double.infinity,
      margin: EdgeInsets.all(30),
      color: Colors.grey.shade300,            
      child: Text(
        texto,
        style: TextStyle(fontSize: 30, color: Colors.purple),
        textAlign: TextAlign.center,
      ),
    );
  }
}
