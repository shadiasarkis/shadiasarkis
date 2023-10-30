import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Comienza el andamiaje, la estructura de la App
        appBar: AppBar(
          //Acá comienza el Appbar
          backgroundColor: const Color(
              0xFF023047), //color de fondo, a mano, luego se puede integrar a flex_color
          leading: const Icon(Icons.menu), //ubicación del ícono de navegación
          title: const Text('Refuerzo'), //título de la app
          actions: [
            //iconos búsqueda y more_vert
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Acción para el ícono de búsqueda
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Acción para el ícono "more_vert"
              },
            ),
          ],
        ), // Acá termina el AppBar
        body: const Center(
          //Este es el body, similar al body de HTML, acá iran superficies , elementos y componentes.
          child: Text("Acá está el body"),
        ),
      ), //Se cierra la estructura de la app
    );
  }
}
