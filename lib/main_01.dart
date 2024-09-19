import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Meu Primeiro App em Flutter'),
    );
  }
}
