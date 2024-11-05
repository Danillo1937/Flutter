import 'package:flutter/material.dart';
import 'package:tarefas_a_fazer/home_page.dart';
import 'package:tarefas_a_fazer/nova_tarefa_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarefas",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange
        ),
      ),
      routes: {
        "/": (_) => const HomePage(),
        "/nova": (_) => const NovaTarefaPage(),
      },
      initialRoute: "/",
    );
  }
}