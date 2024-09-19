import 'package:flutter/material.dart';

main() {
  runApp(Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //desativa o tarja DEBUG
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Equipe A', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 120, 60, 231),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Construindo App da Turma',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {}, //Adicionaremos uma função do botão aqui
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color.fromARGB(255, 120, 60, 231),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        0), // vc pode colocaro formato do seu botão do jeito que vc quiser
                  ),
                ),
                child: Text(
                  'Clique Aqui',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
        //criando o rodapé
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 120, 60, 231), //cor de fundo cinza
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Aqui está o rodapé',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
