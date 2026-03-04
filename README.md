# myapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


<img width="345" height="541" alt="image" src="https://github.com/user-attachments/assets/f8a3a4c1-519b-423d-a66b-c9d830640476" />

<img width="333" height="552" alt="image" src="https://github.com/user-attachments/assets/79556372-2f93-4203-a57a-f884fa7c1c97" />

<img width="323" height="552" alt="image" src="https://github.com/user-attachments/assets/a0c8bc3c-48f3-47bb-955f-7f6ca66f1cdf" />

<img width="325" height="561" alt="image" src="https://github.com/user-attachments/assets/9f6dabb7-f40e-405d-8c0a-bef7a0568220" />

<img width="337" height="560" alt="image" src="https://github.com/user-attachments/assets/6618c677-8db4-40ab-b7b3-c97c83f767cd" />

<img width="336" height="553" alt="image" src="https://github.com/user-attachments/assets/555af358-9077-4d6d-8f34-e8913ca0b3a9" />

<img width="1863" height="882" alt="image" src="https://github.com/user-attachments/assets/31b63b53-e0d3-4bd6-a277-b2d19c18a0d0" />

<img width="1863" height="887" alt="image" src="https://github.com/user-attachments/assets/1e9c2c48-0558-48c7-a01b-41433e5eb74c" />

<img width="1863" height="883" alt="image" src="https://github.com/user-attachments/assets/837084dd-7584-4840-ac57-f04d5a324d19" />

<img width="1863" height="881" alt="image" src="https://github.com/user-attachments/assets/087de16d-baad-4c41-9491-21383ba66cae" />

<img width="1862" height="877" alt="image" src="https://github.com/user-attachments/assets/d25ff9e5-2c4b-4cad-9332-fb1974ad757f" />

<img width="1865" height="882" alt="image" src="https://github.com/user-attachments/assets/206619e5-83e1-45f0-8cc6-68112e9c53e8" />

<img width="1862" height="672" alt="image" src="https://github.com/user-attachments/assets/4072a379-a38e-423b-b93f-02daf5b672be" />

Para que puedas recrear o guardar la estructura exacta de estas pantallas en cualquier momento, aquí tienes el prompt técnico detallado. Este describe la jerarquía, los colores y el comportamiento de navegación que definimos:

Prompt de Diseño: Kinsui Sushi App (Flutter)
Contexto General:
"Crea una aplicación en Flutter para un negocio de Sushi llamado 'Kinsui Sushi'. El diseño debe ser minimalista, usando una paleta de colores basada en blanco, negro y un tono café bajito (#F5E6D3) para encabezados."

Pantalla 4: Confirmación de Orden

Encabezado: AppBar blanco con una letra 'K' negra en negrita a la derecha.

Cuerpo: En el centro, un círculo azul con un icono de 'check' (palomita) en color verde brillante. Debajo, el texto '¡Orden realizada!' en negrita.

Interacción: Un botón de estilo 'ElevatedButton' color terracota que diga 'Siguiente' para navegar a la Pantalla 5.

Pantalla 5: Catálogo de Productos con Menú Lateral (Stack)

Encabezado: AppBar color café bajito (#F5E6D3). Título central: '📍 Calle falsa 123'. Icono de engranaje a la izquierda y 'K' a la derecha.

Buscador: Una barra de búsqueda redondeada con borde gris, icono de lupa y un icono de carrito de compras al lado.

Grid de Productos: Secciones tituladas 'Rollos más pedidos' y 'Rollos fríos'. Cada producto debe estar dentro de un contenedor con borde negro sólido (tipo marco), imagen en la parte superior, nombre y precio en la parte inferior.

Funcionalidad Especial: Un icono de menú (hamburguesa) que, al presionarse, activa un panel superpuesto (Pantalla 6).

Pantalla 6: Menú Lateral Deslizable (Overlay)

Comportamiento: Debe aparecer desde la derecha usando un Stack, cubriendo aproximadamente el 60% de la pantalla para permitir ver los marcos de los rollos de la Pantalla 5 a la izquierda.

Diseño:

Header del Menú: Fondo café bajito con el texto 'Rollos más opciones' y un botón de cerrar (X).

Lista: Elementos tipo ListTile con los nombres: 'Administrador', 'Compras', 'Trabajadores' y 'Envíos', cada uno con un icono de flecha (chevron) a la derecha.

Pie de página: Texto con la versión '1.01' y firma del autor 'Cesar Loya Gpo 6I'.
