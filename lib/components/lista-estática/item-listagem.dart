import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListagem extends StatelessWidget {
  List<dynamic>? dados;
  int index;

  ItemListagem({super.key, this.dados, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.teal, style: BorderStyle.solid, width: 1),
        borderRadius: BorderRadius.circular(20),
        color: Colors.tealAccent,
      ),
      child: Center(
          child: Text(
        dados![index],
        style: const TextStyle(fontWeight: FontWeight.w800),
      )),
    );
  }
}
