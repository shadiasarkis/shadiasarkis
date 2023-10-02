import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:themes/theme.dart';
import 'splashscreen.dart'; // Importa la clase SplashScreen desde el archivo splashscreen.dart

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      //darkTheme: MyTheme.darkTheme(),
      home: const SplashScreen(), // Mostrar la pantalla de carga primero
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Agrega una variable para controlar si la pestaña "Chats" está activa
  bool _isChatsTabActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _isChatsTabActive = _tabController.index ==
          1; // Comprueba si la pestaña "Chats" está activa
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Whatsapp',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              if (kDebugMode) {
                print('Icono de persona presionado!');
              }
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('Grupos', 0),
            _buildTabWithNumberAndColor('Chats', 5,
                _isChatsTabActive), // Cambia el color en función de la activación
            _buildTab('Novedades', 2),
            _buildTab('Llamadas', 3),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          // Agrega el Container blanco debajo de las pestañas
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.archive_outlined,
                    color: MyTheme.lightTheme().colorScheme.primary,
                    size: 24,
                  ),
                ),
                const Padding(
                  // Ajusta el espacio entre el ícono y el texto
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Archivados',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(
                  child: Text('Pestaña de Grupos'),
                ),
                Center(
                  child: Text('Pestaña de Chats'),
                ),
                Center(
                  child: Text('Pestaña de Novedades'),
                ),
                Center(
                  child: Text('Pestaña de Llamadas'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }

  Widget _buildTabWithNumberAndColor(String title, int number, bool isActive) {
    final circleColor = isActive
        ? Colors.white // Cambia el color del círculo a blanco si está activo
        : MyTheme.lightTheme()
            .colorScheme
            .tertiary; // Color secundario para el círculo si está inactivo

    return Tab(
      child: Row(
        children: [
          Text(title),
          const SizedBox(
              width: 4), // Ajusta el espacio entre el texto y el círculo
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(
                left: 4), // Agrega un margen a la izquierda del círculo
            decoration: BoxDecoration(
              color: circleColor, // Color del círculo
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: MyTheme.lightTheme().colorScheme.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
