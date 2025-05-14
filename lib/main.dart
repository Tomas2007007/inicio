import 'package:flutter/material.dart';

void main() {
  // Ponto de entrada da aplicação
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Construtor padrão, marca a classe como imutável
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp é o widget raiz que fornece tema, rotas, etc.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Definimos a cor primária do app
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My first flutter app'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold cria a estrutura básica de uma tela Material
    return Scaffold(
      appBar: AppBar(
        // Exibe o título na barra superior
        title: Text(title),
      ),
      body: const Center(
        // Center centraliza seu filho na tela
        child: Text(
          'Flutter!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
