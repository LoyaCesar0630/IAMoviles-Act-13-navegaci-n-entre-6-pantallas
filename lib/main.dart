import 'package:flutter/material.dart';
import 'widgets/pantalla1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kinsui Sushi',
      theme: ThemeData(primarySwatch: Colors.orange),
      // Iniciamos con la página del detalle
      home: const DetalleProductoPage(),
    );
  }
}
