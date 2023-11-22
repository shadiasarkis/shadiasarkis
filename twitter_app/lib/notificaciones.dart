import 'package:flutter/material.dart';

class NotificacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage('assets/images/perfil.jpeg'),
              ),
              SizedBox(width: 8.0),
              Text(
                'Notificaciones',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(Icons.settings, color: Colors.grey),
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
                  'assets/images/perfil1.jpg',
                  width: 10.0,
                  height: 10.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                '@Juanito te mencionó en un tweet',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Hace 30 minutos',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Ver',
                  style: TextStyle(color: Colors.white),
                ),
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
                  'assets/images/perfil3.jpg',
                  width: 10.0,
                  height: 10.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                '@Maria le dio like a tu tweet',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Hace 1 hora',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Ver',
                  style: TextStyle(color: Colors.white),
                ),
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
                  'assets/images/perfil1.jpg',
                  width: 10.0,
                  height: 10.0,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Tienes un nuevo seguidor: @Carlos',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Text(
                'Hace 2 horas',
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(
                  'Ver',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
