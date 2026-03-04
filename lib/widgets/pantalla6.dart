import 'package:flutter/material.dart';

class Pantalla6 extends StatefulWidget {
  const Pantalla6({super.key});

  @override
  State<Pantalla6> createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  bool mostrarMenu = false; // Controla si se ve el menú lateral

  @override
  Widget build(BuildContext context) {
    Color cafeBajito = const Color(0xFFF5E6D3);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: cafeBajito,
        elevation: 0,
        leading: const Icon(Icons.settings, color: Colors.black),
        title: const Text("📍 Calle falsa 123", style: TextStyle(color: Colors.black, fontSize: 14)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(child: Text("K", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black))),
          )
        ],
      ),
      // Usamos Stack para poner el menú encima de los rollos
      body: Stack(
        children: [
          // CONTENIDO DE LOS ROLLOS (PANTALLA 5)
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: const Text("Buscar...", style: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.shopping_cart_outlined),
                      const SizedBox(width: 10),
                      // BOTÓN QUE ABRE EL MENÚ
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            mostrarMenu = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                _seccionTitulo("Rollos más pedidos"),
                _filaDeRollos(),
                _seccionTitulo("Rollos fríos ❄️"),
                _filaDeRollos(),
              ],
            ),
          ),

          // PANTALLA 6: EL MENÚ LATERAL (Se muestra si mostrarMenu es true)
          if (mostrarMenu)
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              width: MediaQuery.of(context).size.width * 0.6, // Tapa un poco más de la mitad
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: const Border(left: BorderSide(color: Colors.black, width: 2)),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 10)],
                ),
                child: Column(
                  children: [
                    // Encabezado del menú igual al dibujo
                    Container(
                      height: 100,
                      color: cafeBajito,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Rollos más opciones", style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () => setState(() => mostrarMenu = false),
                          )
                        ],
                      ),
                    ),
                    _itemMenu("Administrador"),
                    _itemMenu("Compras"),
                    _itemMenu("Trabajadores"),
                    _itemMenu("Envíos"),
                    const Spacer(),
                    const Divider(),
                    const Text("Última versión 1.01"),
                    const Text("Cesar Loya Gpo 6I", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Widgets auxiliares para mantener el diseño idéntico
  Widget _seccionTitulo(String titulo) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(titulo, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _filaDeRollos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _cuadroVacio(),
        _cuadroVacio(),
      ],
    );
  }

  Widget _cuadroVacio() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: const Center(child: Icon(Icons.image, color: Colors.grey)),
    );
  }

  Widget _itemMenu(String titulo) {
    return ListTile(
      title: Text(titulo),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}