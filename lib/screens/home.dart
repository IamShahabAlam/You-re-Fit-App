import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmi_page.dart';
import 'package:youre_fit/screens/bmr_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBG,
      body: SafeArea(
        child: Column(

          mainAxisSize: MainAxisSize.max ,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
// LOGO
            SizedBox(height: _h*0.1,),
            Align( alignment: Alignment.center,
              child:  Image.asset("assets/Youre-Icon3.png", height: _h*0.25 , width: _w*0.6, )),

// Text
            Container( margin: EdgeInsets.symmetric(horizontal: _w*0.06 , vertical: _h*0.06),
              child: Text("The You’re Fit App is a BMR and BMI mobile application which avoids more manual hours that need to spend in personally to calculate and finds the Body Mass Index and Basal Metabolic Rate for a particular person at a single click.",
                style: TextStyle(fontSize: 15, height: 1.35 ), textAlign: TextAlign.justify,),
            ),

// BMI Button
            HomeBtn(h: _h, w: _w ,
              name: "Body Mass Index",
              screen: BMI_Page(),
              t_margin: 0.04,
              begin: Alignment.centerLeft ,
              end: Alignment.centerRight ,
            ),

// BMR Button
            HomeBtn(h: _h, w: _w,
            name: "Basal Metabolic Rate",
              t_margin: 0.04,
              screen: BMR_Page(),
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),

            

          ],
        ),
      ),
    );
  }
}
