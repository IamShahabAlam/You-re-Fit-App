import 'package:clippy_flutter/buttcheek.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/constants.dart';

class Gain_Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG,
      body: Column(
        children: [
          Stack(
            children: [
              ButtCheek(
                height: 20,
                child: Image.asset("assets/gain_ex.jpg",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned( top: 20.0 , left: 10.0,
                child: Container(height: 50, width: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: CircleBorder()
                      ),
                      onPressed: (){Navigator.pop(context);},
                      child: Icon(Icons.arrow_back_ios, size: 28.0, color: kBMRactiveCardColor,)),
                ),
              ),

              Positioned( top: 20.0, right: 10.0,
                child: Container( height: 50, width: 50, //padding: EdgeInsets.only(right: 5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: Icon(Icons.info_outline, size: 30.0, color: kBMRactiveCardColor,)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
