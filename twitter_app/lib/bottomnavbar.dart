import 'package:flutter/material.dart';
import 'package:twitter_app/mensajes.dart';
import 'package:twitter_app/buscar.dart';
import 'package:twitter_app/home.dart';
import 'package:twitter_app/comunidades.dart';
import 'package:twitter_app/notificaciones.dart';

class BNBPage extends StatefulWidget {
  @override
  _BNBPageState createState() => _BNBPageState();
}

class _BNBPageState extends State<BNBPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BuscarPage(),
    ComunidadesPage(),
    NotificacionesPage(),
    MensajesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_sharp),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(0, 205, 255, 1),
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
