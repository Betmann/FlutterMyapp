import 'package:flutter/material.dart';
import 'main_11_segunda_tela.dart'; // Importe a Segunda_Tela_App

void main() {
  runApp(const Projeto01App());
}

class Projeto01App extends StatefulWidget {
  const Projeto01App({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<Projeto01App> {
  String texto = 'Cadastrando Sensores';
  String localizacao = '';
  String tipo = '';
  String macAddress = '';
  double? latitude;
  double? longitude;
  String responsavel = '';
  String observacao = '';
  String unidadeMedida = '';
  bool statusOperacional = true;

  final TextEditingController _localizacaoController = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _macAddressController = TextEditingController();
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _longitudeController = TextEditingController();
  final TextEditingController _responsavelController = TextEditingController();
  final TextEditingController _unidadeMedidaController =
      TextEditingController();
  final TextEditingController _observacaoController = TextEditingController();

  @override
  void dispose() {
    _localizacaoController.dispose();
    _tipoController.dispose();
    _macAddressController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    _responsavelController.dispose();
    _observacaoController.dispose();
    _unidadeMedidaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Smart City Roberto Mange'),
          backgroundColor: Colors.grey[300],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Campo Tipo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _tipoController,
                  decoration: const InputDecoration(
                    labelText: 'Tipo',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    tipo = value;
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Mac Address
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _macAddressController,
                  decoration: const InputDecoration(
                    labelText: 'Mac Address',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 14,
                  onChanged: (value) {
                    macAddress = value;
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Latitude
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _latitudeController,
                  keyboardType: TextInputType.number, // Alterado para número
                  decoration: const InputDecoration(
                    labelText: 'Latitude',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    latitude = double.tryParse(value);
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Longitude
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _longitudeController,
                  keyboardType: TextInputType.number, // Alterado para número
                  decoration: const InputDecoration(
                    labelText: 'Longitude',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    longitude = double.tryParse(value);
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Local do Sensor
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _localizacaoController,
                  decoration: const InputDecoration(
                    labelText: 'Local do Sensor',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    localizacao = value;
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Responsável
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _responsavelController,
                  decoration: const InputDecoration(
                    labelText: 'Responsável',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    responsavel = value;
                  },
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os campos

              // Campo Status Operacional
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Status Operacional"),
                    Switch(
                      value: statusOperacional,
                      onChanged: (value) {
                        setState(() {
                          statusOperacional = value;
                        });
                      },
                    ),
                  ],
                ),
              ),

              // Campo Observação
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _observacaoController,
                  decoration: const InputDecoration(
                    labelText: 'Observação',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 100,
                  onChanged: (value) {
                    observacao = value;
                  },
                ),
              ),
              const SizedBox(height: 20), // Espaçamento entre os campos

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto = localizacao.isNotEmpty
                        ? 'Local do Sensor: $localizacao\n'
                            'Tipo: $tipo\n'
                            'Mac Address: $macAddress\n'
                            'Latitude: $latitude\n'
                            'Longitude: $longitude\n'
                            'Responsável: $responsavel\n'
                            'Observação: $observacao'
                        : 'Por favor, insira um local do sensor!';
                  });

                  // Limpa os campos após clicar
                  _localizacaoController.clear();
                  _tipoController.clear();
                  _macAddressController.clear();
                  _latitudeController.clear();
                  _longitudeController.clear();
                  _responsavelController.clear();
                  _observacaoController.clear();

                  // Reseta as variáveis
                  localizacao = '';
                  tipo = '';
                  macAddress = '';
                  latitude = null;
                  longitude = null;
                  responsavel = '';
                  observacao = '';
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50), // Largura: 200, Altura: 50
                ),
                child: const Text('Cadastrar Sensor'),
              ),
              const SizedBox(
                  height: 20), // Espaçamento entre o botão e o texto do resumo

              // Resumo do Cadastro
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  texto,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300], // Cor de fundo cinza claro
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Aqui é o rodapé',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
