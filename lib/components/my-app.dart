import 'package:flutter/material.dart';
import 'package:igor_bancaria/components/form/formulario.dart';
import 'package:igor_bancaria/components/lista-est%C3%A1tica/listagem-separada.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> dados = ["Pix", "Crédito", "Débito", "Empréstimos"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aplicação Bancária",
        theme: ThemeData(primaryColor: Colors.teal),
        home: Scaffold(
          body: Column(children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.teal,
              child: const Text(
                'IgorBank',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(child: Card(child: ListagemSeparada(dados: dados))),
            Expanded(child: Card(child: Formulario())),
          ]),
        ));
  }
}
