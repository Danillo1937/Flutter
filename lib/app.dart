import 'package:flutter/material.dart';
import 'package:tarefas_a_fazer/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarefas",
      routes: {
        "/": (_) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}