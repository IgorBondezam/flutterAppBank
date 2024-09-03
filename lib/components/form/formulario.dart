import 'package:flutter/material.dart';
import 'package:igor_bancaria/components/lista-dinamica/lista-dinamica.dart';

class Formulario extends StatelessWidget {

  Formulario({super.key});

  final TextEditingController nome = TextEditingController();
  final TextEditingController idade = TextEditingController();
  final TextEditingController cpf = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Form(
          child: Column(
            children: [
              TextField(
                controller: nome,
                decoration: const InputDecoration(
                    border:  OutlineInputBorder(),
                    hintText: "Digita seu nome aí!!"
                ),
              ),
              TextField(
                controller: idade,
                decoration: const InputDecoration(
                    border:  OutlineInputBorder(),
                    hintText: "Digita sua idade aí!!"
                ),
              ),
              TextField(
                controller: cpf,
                decoration: const InputDecoration(
                    border:  OutlineInputBorder(),
                    hintText: "Digita seu cpf aí!!"
                ),
              )
            ],
          ),
        ),
          ListaDinamica(nomeController: nome, idadeController: idade, cpfController: cpf),
      ]
    );
  }

}