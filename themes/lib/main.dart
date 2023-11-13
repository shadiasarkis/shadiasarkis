import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:themes/themes.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: MyTheme.darkTheme(),
      home: const SplashScreen(),
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
  bool _isChatsTabActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _isChatsTabActive = _tabController.index == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.lightTheme().colorScheme.primaryContainer,
        title: SizedBox(
          height: 40.0, // Ajusta según sea necesario
          child: Image.asset(
            'assets/twitter2.png', // Reemplaza con la ruta correcta de tu imagen
            fit: BoxFit.contain,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('For You', 0),
            _buildTab(
              'Following',
              1,
              isActive: _isChatsTabActive,
            ),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),

      body: SingleChildScrollView(
        //Permite eventualemnte desplazarse a un punto x en el scroll.

        child: Column(
          //será una columna vertical, navegamos verticalmente

          children: [
            Container(
              //superficie azul, de acá en adelante todo será un container
              color: const Color(0xFF023047), // Color en formato hexadecimal
              height: 300.0, //alto
              width: double.infinity, //ancho, al infinito y más allá
            ),

            const Divider(
              //para separar del siguiente container, es horizontal
              height: 4.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255), //color
            ),

            Row(
              //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
              children: [
                Expanded(
                  //cada expanded es una columna al interior del container, se construye el container en su interior
                  flex: 1, //primera división de la superficier, ROW
                  child: Container(
                    // acá se construye, el contenido de esa superficie previamente formateada.
                    height: 48.0, //con alto de 48 pixeles
                    color:
                        const Color(0xFF8EDBCE), // Color en formato hexadecimal
                  ),
                ),

                const SizedBox(width: 4.0), //separador vertical

                Expanded(
                  flex: 1, //segunda división de la superficie, ROW
                  child: Container(
                    height: 48.0,
                    color:
                        const Color(0xFF8EDBCE), // Color en formato hexadecimal
                  ),
                ),
              ],
            ),

            const Divider(
              //Nuevo separador horizontal
              height: 4.0,
              color: Color.fromARGB(255, 255, 255, 255),
            ),

            //Nueva declaración de fila, tendrá 4 subdivisiones
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 96.0,
                    color:
                        const Color(0xFFE9DDFF), // Color en formato hexadecimal
                  ),
                ),

                const SizedBox(width: 4.0), //separación vertical

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 96.0,
                    color:
                        const Color(0xFFE9DDFF), // Color en formato hexadecimal
                  ),
                ),

                const SizedBox(width: 4.0), //separación vertical

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 96.0,
                    color:
                        const Color(0xFFFB6900), // Color en formato hexadecimal
                  ),
                ),

                const SizedBox(width: 4.0), //separación vertical

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 96.0,
                    color:
                        const Color(0xFFFB6900), // Color en formato hexadecimal
                  ),
                ),
              ],
            ),
          ],
        ),
      ), // Se cierra el body

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyTheme.lightTheme().colorScheme.primaryContainer,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Icono blanco
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white), // Icono blanco
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined,
                color: Colors.white), // Icono blanco
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.email_outlined, color: Colors.white), // Icono blanco
            label: '',
          ),
        ],
        selectedItemColor:
            Colors.white, // Color del texto seleccionado en blanco
        unselectedItemColor: const Color.fromARGB(
            255, 103, 102, 102), // Color de íconos no seleccionados
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print('Botón de mensaje presionado!');
          }
        },
        backgroundColor: MyTheme.lightTheme().colorScheme.primary,
        shape: CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildTab(String title, int index, {bool isActive = false}) {
    return Tab(
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : null,
            ),
          ),
        ),
      ),
    );
  }
}
