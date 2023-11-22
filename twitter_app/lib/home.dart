import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
              Image.asset(
                'assets/images/logo_corto.png',
                width: 50.0,
                height: 50.0,
              ),
              Spacer(),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
          SizedBox(height: 16.0),

          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              color: Colors.black, 
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/politicos.jpg',
                    width: double.infinity,
                    height: 180.0,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text('Maximmilian @maxjacobson ·3h',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  Row(
                    children: [
                      Icon(Icons.comment, color: Colors.white),
                      SizedBox(width: 8.0),
                      Icon(Icons.favorite_border, color: Colors.white),
                      SizedBox(width: 8.0),
                      Icon(Icons.insert_chart, color: Colors.white),
                      Icon(Icons.share, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),

          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: Column(
              children: [
                ListTile(
                  title: Text('Alejandra Becerra  @mis_becerra ·14h',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ',
                      style: TextStyle(
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: Column(
              children: [
                ListTile(
                  title: Text('', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ',
                      style: TextStyle(
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.black,
            child: Column(
              children: [
                ListTile(
                  title: Text('Martha Craig @craig_love ·12h',
                      style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ',
                      style: TextStyle(
                          color: Colors.grey)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
