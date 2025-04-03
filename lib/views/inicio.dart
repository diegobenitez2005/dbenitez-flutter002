import 'package:flutter/material.dart';
import 'package:db_ciclo_de_vida/views/acerca_de.dart';
import 'package:db_ciclo_de_vida/views/contactanos.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  // Variable para el contador
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState: La pantalla Inicio ha sido inicializada.');
  }

  void _incrementCounter() {
    setState(() {
      _counter++; // Incrementa el contador
    });
    print('setState: El contador ha sido actualizado a $_counter.');
  }

  void _navigateToAcercaDe() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AcercaDeScreen()),
    );
  }

  void _navigateToContacto() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ContactoScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('build: La pantalla Inicio está siendo construida.');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenido', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('Aumenta el contador cuantas veces quieras', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text('Contador: $_counter', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              label: const Text('Incrementar Contador'),
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Acerca de'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contacto',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 197, 136, 216),
        unselectedItemColor: const Color.fromARGB(255, 197, 136, 216),
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (int index) {
          if (index == 0) {
            _navigateToAcercaDe(); // Navegar a "Acerca de"
          } else if (index == 1) {
            _navigateToContacto(); // Navegar a "Contacto"
          }
        },
      ),
    );
  }
}
