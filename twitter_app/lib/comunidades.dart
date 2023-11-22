import 'package:flutter/material.dart';

class ComunidadesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
         
                },
              ),
              SizedBox(width: 8.0),
              Text(
                'Comunidades sugeridas',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Container(
                width: 50.0,
                height: 50.0,
                child: Image.asset(
                  'assets/images/com1.jpg',
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Comunidad XYZ',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Únete a esta comunidad para compartir tus experiencias y conocer a otras personas con intereses similares.',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Container(
                width: 50.0,
                height: 50.0,
                child: Image.asset(
                  'assets/images/com2.jpg',
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Comunidad ABC',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Descubre nuevas amistades y comparte tus pasiones en la Comunidad ABC.',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Container(
                width: 50.0,
                height: 50.0,
                child: Image.asset(
                  'assets/images/com3.jpg',
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Comunidad 123',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Explora la Comunidad 123 y encuentra personas con intereses similares a los tuyos.',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
