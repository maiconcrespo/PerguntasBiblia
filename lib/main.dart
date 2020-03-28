import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/perguntasUser.dart';

main() => runApp(PerguntasBiblicasApp());

class PerguntasBiblicasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Text("Perguntas Biblicas !!")),
      ),
      body: SingleChildScrollView(
        child: PerguntasUser(),
      ),
    );
  }
}
