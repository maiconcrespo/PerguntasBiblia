import 'package:flutter/material.dart';

class RespostaPersonalizada extends StatelessWidget {

  final String texto;
  final void Function() onSelection;
  RespostaPersonalizada(this.texto, this.onSelection);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30,0,20,10),
      width: double.infinity,
      height: 100,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.purple,
        child: Text(texto,style: TextStyle(fontSize: 25),),
        onPressed: onSelection,
      ),
    );
  }
}
