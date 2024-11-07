import 'package:flutter/material.dart';

class SegundaTelaApp extends StatelessWidget {
  const SegundaTelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sensores Cadastro'),
      ),
      body: Center(
        child: Text(
          'Aqui serão listados os sensores cadastrados:',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
