import 'package:flutter/material.dart';


class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});
  

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
  
}

class _ContactoScreenState extends State<ContactoScreen> {
  final TextEditingController _controller = TextEditingController();
  void _goBack() {
    Navigator.pop(context);
  } // Controlador para el TextField

  @override
  void initState() {
    super.initState();
    print('initState: La pantalla Contacto ha sido inicializada.');
  }

  @override
  void dispose() {
    // Imprimir el mensaje en la consola antes de cerrar la pantalla
    print('dispose: El mensaje ingresado fue: ${_controller.text}');
    _controller.dispose(); // Liberar el controlador del TextField
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build: La pantalla Contacto está siendo construida.');
    return Scaffold(
      appBar: AppBar(title: const Text('Contacto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Escribe tu mensaje:', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mensaje',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Mensaje actual: ${_controller.text}');
              },
              child: const Text('Imprimir Mensaje'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _goBack,
        tooltip: 'Regresar',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
