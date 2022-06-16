import 'package:flutter/material.dart';
import 'package:account_book/homepage.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 600,
      duration: 2000,
      splash: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Image(image: AssetImage('image/logo.png')),
          ),
          Text(
            'Account Book',
            style: TextStyle(
              fontSize: 28,
            ),

          )
          
        ],
      ),

      nextScreen: HomePage(),
      splashTransition: SplashTransition.fadeTransition,

    );
  }
}









