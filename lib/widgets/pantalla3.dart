import 'package:flutter/material.dart';
// Importamos la pantalla 4 para poder navegar a ella
import 'pantalla4.dart'; 

class PagoPage extends StatelessWidget {
  const PagoPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color cafeBajito = const Color(0xFFF5E6D3);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: cafeBajito,
        elevation: 0,
        title: const Text("Terminar y Pagar", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        // Agregamos la "K" en el AppBar como en tus bocetos
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text("K", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: cafeBajito, 
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text("Entrega a domicilio"),
                ),
                const SizedBox(height: 20),
                
                // OPCIÓN 1: DIRECCIÓN (Ahora con navegación)
                ListTile(
                  leading: const Icon(Icons.home, color: Color(0xFFD2691E)),
                  title: const Text("Falso 123", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Calle Falsa 123,\nColonia Falsa, 32000,\nJuarez, CHIH."),
                  trailing: const Icon(Icons.chevron_right),
                  isThreeLine: true,
                  onTap: () {
                    // Al darle clic, navega a la Pantalla 4
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Pantalla4())
                    );
                  },
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Divider(color: Colors.grey.shade400),
                ),
                
                // OPCIÓN 2: INSTRUCCIONES (Ahora con navegación)
                ListTile(
                  leading: const Icon(Icons.directions_walk, color: Color(0xFFD2691E)),
                  title: const Text("Nos vemos en la puerta"),
                  subtitle: const Text("Añadir instrucciones de entrega"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // También podemos navegar desde aquí
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Pantalla4())
                    );
                  },
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text("Cesar Loya Gpo 6I", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}