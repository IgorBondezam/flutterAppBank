import 'package:flutter/material.dart';
import 'package:igor_bancaria/screens/list_transacoes.dart';

void main() {
  runApp(MyBank());
}

class MyBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[900],
          textTheme: ButtonTextTheme.primary),
      ),
      home: ListaTransacoes(),
    );
  }
}
