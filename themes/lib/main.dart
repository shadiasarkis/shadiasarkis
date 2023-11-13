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
      body: Column(
        children: [
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
              ],
            ),
          ),
        ],
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
