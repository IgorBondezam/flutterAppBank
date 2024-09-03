import 'package:flutter/material.dart';
import 'package:igor_bancaria/components/form/form-value.dart';
import 'package:igor_bancaria/components/lista-est%C3%A1tica/item-listagem.dart';

class ListaDinamica extends StatefulWidget {
  ListaDinamica({required this.nomeController, required this.idadeController, required this.cpfController, super.key});

  final TextEditingController nomeController;
  final TextEditingController idadeController;
  final TextEditingController cpfController;

  @override
  State<StatefulWidget> createState() {
    return _ListaDinamicaState();
  }
}

class _ListaDinamicaState extends State<ListaDinamica> {
  final List<FormValue> formValue = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              formValue.add(FormValue(
                widget.nomeController.text,
                int.parse(widget.idadeController.text),
                widget.cpfController.text,
              ));
            });
          },
          child: const Text("Adicionar"),
        ),
        ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: formValue.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemListagem(
              dados: formValue,
              index: index,
            );
          },
        ),
      ],
    );
  }
}