import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    void goBack() {
    Navigator.pop(context); // Regresar a la pantalla anterior
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
              titleTextStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
          ),
      ),
      body: const Center(
        child: Text(
          'Sobre nosotros',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goBack,
        tooltip: 'Regresar',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}