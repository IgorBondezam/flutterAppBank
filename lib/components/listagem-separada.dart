import 'package:flutter/material.dart';
import 'package:igor_bancaria/components/item-listagem.dart';

class ListagemSeparada extends StatelessWidget {
  List<String>? dados;

  ListagemSeparada({super.key, this.dados});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: dados!.length,
      itemBuilder: (BuildContext context, int index) {
        return ItemListagem(
          dados: dados,
          index: index,
        );
      },
    );
  }
}
