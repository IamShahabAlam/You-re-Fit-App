import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:youre_fit/screens/L_diet_Page.dart';
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

        splash: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.symmetric(vertical: 50.0),
                height: 200,
                width: 200,
                child: Image.asset(
                  "assets/Youre-Icon3.png",
                ),
              ),

              Text(
                "You're Fit App",
                style: TextStyle(
                    color: kactiveCardColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    shadows: [Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    )],
                    letterSpacing: 1.5),
              ),

              SizedBox(
                height: 240,
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
                    thickness: 1.5,
                    color: Colors.grey[700],
                  ))
            ],
          ),
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
