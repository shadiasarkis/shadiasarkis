import 'package:flutter/material.dart';

class BuscarPage extends StatelessWidget {
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
              SizedBox(width: 16.0),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 8.0),
                      Text(
                        'Buscar en Twitter',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Icon(Icons.settings, color: Colors.grey),
            ],
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Trends para ti',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text(
                '#BlockbusterWeekend',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text('5K Tweets',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                  SizedBox(height: 8.0),
                  Text(
                    'Descubre las películas más populares para este fin de semana.',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text(
                '#ClassicMovies',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text('8K Tweets',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                  SizedBox(height: 8.0),
                  Text(
                    'Revive los clásicos del cine con las mejores películas de todos los tiempos.',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text(
                '#MovieNightIdeas',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.0),
                  Text('12K Tweets',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                  SizedBox(height: 8.0),
                  Text(
                    'Encuentra sugerencias para tu próxima noche de películas en casa.',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
