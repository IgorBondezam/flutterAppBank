import 'package:flutter/material.dart';
import 'package:igor_bancaria/models/enums/tipo_transacao.dart';
import 'package:igor_bancaria/models/transacao.dart';

class FormTransacoes extends StatefulWidget {
  final TextEditingController _controllerValor = TextEditingController();

  FormTransacoes({super.key});

  @override
  State<FormTransacoes> createState() => _FormTransacoesState();
}

class _FormTransacoesState extends State<FormTransacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Transações'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: widget._controllerValor,
                style: const TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(widget._controllerValor.text);
                _criarTransacoes(context);
              },
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }

  void _criarTransacoes(BuildContext context) {
    double? valor = double.tryParse(widget._controllerValor.text);
    if(valor != null) {
      final Transacao novaTransacao = Transacao(valor, TipoTransacao.debito);
      Navigator.pop(context, novaTransacao);
    }
  }
}
