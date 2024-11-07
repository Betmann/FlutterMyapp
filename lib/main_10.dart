import 'package:flutter/material.dart';
import 'main_01_segunda_tela.dart';

void main() {
  runApp(const Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo navegação duas telas",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Projeto01AppScreen(),
    );
  }
}

class Projeto01AppScreen extends StatefulWidget {
  @override
  _Projeto01AppScreenState createState() => _Projeto01AppScreenState();
}

class _Projeto01AppScreenState extends State<Projeto01AppScreen> {
  String texto = 'Construindo App com Flutter';
  String localSensor = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Equipe A',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 24, 0, 240),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 0, 240),
              ),
              child: Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Tela 1'),
              onTap: () {
                // Navegue para a primeira tela
                Navigator.pop(context); // Fecha o drawer
                // Adicione aqui a navegação para a Tela 1
              },
            ),
            ListTile(
              title: Text('Tela 2'),
              onTap: () {
                // Navegue para a segunda tela
                Navigator.pop(context); // Fecha o drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SegundaTelaApp()), // Aqui você deve ter a classe da segunda tela
                );
              },
            ),
            ListTile(
              title: Text('Sair'),
              onTap: () {
                // Adicione funcionalidade para sair do app, se necessário
                Navigator.pop(context); // Fecha o drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: "Local do sensor",
                  border: OutlineInputBorder(),
                ),
                maxLength: 20,
                onChanged: (value) {
                  localSensor = value;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = localSensor.isNotEmpty
                      ? 'Local do sensor: $localSensor'
                      : 'Por Favor, insira um local de sensor';
                });
                _controller.clear();
                localSensor = '';
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
              ),
              child: Text('Clique aqui!'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 0, 26, 255),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Aqui é o rodapé",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
