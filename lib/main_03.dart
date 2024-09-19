import 'package:flutter/material.dart';

main() {
  runApp(Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title:
            const Text('App da Turma A', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 132, 132, 136),
      ),
    ));
  }
}
