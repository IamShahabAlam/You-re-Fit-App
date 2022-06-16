import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:youre_fit/screens/home.dart';
import 'components/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: kBG,
        splashIconSize: 800,

        splash: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 200,
              child: Image.asset(
                "assets/Youre-Icon3.png",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "FINAL YEAR PROJECT",
              style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            SizedBox(
                width: 80,
                child: Divider(
                  color: Colors.grey[700],
                ))
          ],
        ),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: Home(),
        //  backgroundColor: Colors.grey,
      ),
    );
  }
}

//=============== Color Theme ================
// Bg Color  Color(0xFFF3E8DB)
// main color Color(0xFFFF9800) or Colors.orange[500]
// Dark main Color(0xFFE65100) or Colors.orange[900]
// grey color Color(0xFF7E7777)
// Dark grey color Color(0xFF3D4348)
