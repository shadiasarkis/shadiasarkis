import 'package:flutter/material.dart';
import 'package:twitter_app/bottomnavbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return BNBPage();
        } else {
          return Scaffold(
            backgroundColor: Colors.black, // Fondo negro
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/tw_logo_largo.png',
                    width: 150,
                    height: 90,
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
