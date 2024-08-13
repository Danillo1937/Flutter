//objeto que representa a tela (usando "stl" para criar o codigo abaixo)
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: tema.colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("2h3"),
            Text("Danillo"),
            Text("2024"),
          ],
        ),
      ),
    );
  }
}

//objeto que representa o app (gestor)
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 1",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
