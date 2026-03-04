import 'package:flutter/material.dart';
import 'package:myapp/widgets/pantalla2.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/roll.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Yamasaki Roll.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Detalles...",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 15),
                  const Text("Agregar... *Obligatorio", style: TextStyle(fontWeight: FontWeight.bold)),
                  _buildOption("Palillos", true),
                  _buildOption("Tenedor", false),
                  _buildOption("Servilletas", false),
                  const SizedBox(height: 10),
                  const Text("Extras...", style: TextStyle(fontWeight: FontWeight.bold)),
                  _buildExtra("Wasabi", "\$25.00"),
                  _buildExtra("Jengibre", "\$15.00"),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD2691E),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CarritoPage()));
                      },
                      child: const Text("Agregar", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const Center(child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Cesar Loya Gpo 6I"),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String text, bool selected) {
    return CheckboxListTile(
      title: Text(text),
      value: selected,
      activeColor: const Color(0xFFD2691E),
      onChanged: (v) {},
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }

  Widget _buildExtra(String text, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Row(
          children: [
            Text(price),
            Checkbox(value: false, onChanged: (v) {}),
          ],
        )
      ],
    );
  }
}