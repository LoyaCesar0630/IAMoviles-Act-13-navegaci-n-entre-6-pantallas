import 'package:flutter/material.dart';
import 'pantalla5.dart'; // Importante para poder navegar a la siguiente

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                "K",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Círculo azul con palomita verde según tu dibujo
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check, color: Colors.greenAccent, size: 80),
            ),
            const SizedBox(height: 20),
            const Text(
              "¡Orden realizada!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            
            // BOTÓN SIGUIENTE AGREGADO
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD2691E), // Color café/naranja del negocio
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  // Navega a la Pantalla 5
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Pantalla5()),
                  );
                },
                child: const Text(
                  "Siguiente",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            
            const Spacer(),
            const Text(
              "Cesar Loya Gpo 6I",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}