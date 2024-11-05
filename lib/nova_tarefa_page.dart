import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefas_a_fazer/vm/tarefa_vm.dart';

class NovaTarefaPage extends StatelessWidget {
  const NovaTarefaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final tituloCOntroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova Tarefa"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: tituloCOntroller,
                decoration: const InputDecoration(
                  labelText: "Título",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final vm = Provider.of<TarefaViewModel>(
                  context,
                  listen: false,
                );
                vm.addTarefa(tituloCOntroller.text);
                Navigator.pop(context);
              },
              child: const Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
