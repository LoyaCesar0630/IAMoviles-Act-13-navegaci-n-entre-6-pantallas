import 'package:flutter/material.dart';
import 'pantalla6.dart'; // Asegúrate de tener creada pantalla6.dart en la misma carpeta

class Pantalla5 extends StatelessWidget {
  const Pantalla5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // --- SECCIÓN SUPERIOR BLANCA (Ajustes, Ubicación, Logo) ---
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  const Icon(Icons.settings_outlined, size: 22, color: Colors.black54),
                  const Spacer(flex: 2),
                  const Icon(Icons.location_on_outlined, size: 18, color: Colors.black),
                  const Text(
                    " calle falsa 123",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(flex: 3),
                  const Text(
                    "k",
                    style: TextStyle(
                      fontFamily: 'serif',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),

            // --- APPBAR CAFÉ (Home, Buscador, Carrito, Menú) ---
            Container(
              color: const Color(0xFFC4A484), 
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  const Icon(Icons.home_outlined, size: 30, color: Colors.black),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar...',
                          prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.shopping_cart_outlined, size: 28, color: Colors.black),
                  const SizedBox(width: 8),
                  // BOTÓN MENÚ HAMBURGUESA QUE NAVEGA A PANTALLA 6
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pantalla6()),
                      );
                    },
                    child: const Icon(Icons.menu, size: 32, color: Colors.black),
                  ),
                ],
              ),
            ),

            // --- CONTENIDO DE SUSHIS ---
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Rollos mas pedidos.", 
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    _gridSushis([
                      _itemSushi(
                        "Favorito especial", 
                        "199.90", 
                        const Color(0xFFD2B48C),
                        "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=500&q=80"
                      ),
                      _itemSushi(
                        "Panco roll", 
                        "150.99", 
                        const Color(0xFFBC8F8F),
                        "https://images.unsplash.com/photo-1611143669185-af224c5e3252?w=500&q=80"
                      ),
                    ]),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Text("Rollos frios ", 
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Icon(Icons.all_inclusive, size: 20),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _gridSushis([
                      _itemSushi(
                        "California roll", 
                        "162.99", 
                        Colors.white,
                        "https://images.unsplash.com/photo-1553621042-f6e147245754?w=500&q=80"
                      ),
                      _itemSushi(
                        "Regio roll", 
                        "168.90", 
                        Colors.white,
                        "https://images.unsplash.com/photo-1559466273-d95e72debaf8?w=500&q=80"
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gridSushis(List<Widget> items) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      childAspectRatio: 0.72, // Ajustado para que quepa la imagen y el texto
      children: items,
    );
  }

  Widget _itemSushi(String nombre, String precio, Color fondo, String urlImagen) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: fondo,
              width: double.infinity,
              child: Image.network(
                urlImagen,
                fit: BoxFit.cover,
                // Muestra un cargador mientras baja la imagen
                loadingBuilder: (context, child, progress) {
                  return progress == null ? child : const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Color(0xFFE0E0E0),
              border: Border(top: BorderSide(color: Colors.black, width: 1.5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nombre, 
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)
                ),
                Text("\$ $precio", style: const TextStyle(fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}