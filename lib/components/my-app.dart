import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<String> dados = ["Hello", "World", "Olá", "Mundo"];
  final List<int> colorCodes = <int>[600, 500, 400, 100];


  @override
    Widget build(BuildContext context){
        return MaterialApp(
          title: "Aplicação Bancária",
          theme: ThemeData(
            primaryColor: Colors.teal
          ),
          home: Card(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: dados.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(child: Text(dados[index])),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
        );
    }
}