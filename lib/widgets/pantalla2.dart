import 'package:flutter/material.dart';
import 'pantalla3.dart'; // Importante para ir a terminar y pagar

class CarritoPage extends StatefulWidget {
  const CarritoPage({super.key});

  @override
  State<CarritoPage> createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {
  bool pedirCubiertos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Calle 123", style: TextStyle(color: Colors.black, fontSize: 14)),
        centerTitle: true,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text("K", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            color: const Color(0xFFD2691E),
            width: double.infinity,
            height: 40,
            alignment: Alignment.center,
            child: const Text("Carrito", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    'https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/roll.jpeg', 
                    width: 50, height: 50, fit: BoxFit.cover,
                  ),
                ),
                title: const Text("Yamasaki Roll"),
                subtitle: const Text("\$182.90"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: const Icon(Icons.delete_outline), onPressed: () {}),
                    const Text("1"),
                    IconButton(icon: const Icon(Icons.add_circle_outline), onPressed: () {}),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.flatware),
              title: const Text("Pedir cubiertos, etc."),
              trailing: Checkbox(
                activeColor: const Color(0xFFD2691E),
                value: pedirCubiertos,
                onChanged: (bool? value) {
                  setState(() => pedirCubiertos = value!);
                },
              ),
            ),
            const ListTile(
              leading: Icon(Icons.note_add_outlined),
              title: Text("Agregar nota"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal 181.90", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD2691E),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PagoPage()));
                },
                child: const Text("Finalizar Compra", style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const Center(child: Text("Cesar Loya Gpo 6I")),
          ],
        ),
      ),
    );
  }
}