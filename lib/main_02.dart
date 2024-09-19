import 'package:flutter/material.dart';

void main() {
  runApp(const Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Equipe A',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 27, 1, 61),
      ),
    ));
  }
}
