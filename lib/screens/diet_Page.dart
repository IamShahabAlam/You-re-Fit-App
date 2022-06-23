
import 'package:clippy_flutter/buttcheek.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/constants.dart';

class Diet_Page extends StatefulWidget {

  @override
  _Diet_PageState createState() => _Diet_PageState();
}

class _Diet_PageState extends State<Diet_Page> {

  // Weight Loss Plan Lists
  var _meal = ["BreakFast", "Snack", "Lunch", "Snack", "Dinner"];
  var _oneWLPlan = ["All-bran cereal (125) Milk (50)","Cucumber (30)Avocado dip (50)","Grilled cheese with tomato (300)Salad (50)","Walnuts (100)" , "Grilled Chicken (200)Brussel sprouts (100)Quinoa (105)  "];
  var _twoWLPlan = ["Granola (120)Greek yogurt (120)Blueberries (40)","Orange (70)","Chicken and vegetable soup (300)Bread (100)","Apple (75)Peanut butter (75)","Steak (375)Mashed potatoes (150) Asparagus (75)",];

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold( backgroundColor: kBG,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                ButtCheek(
                  height: 20,
                  child: Image.asset("assets/diet.jpg",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.only(right: 20),
                      color: kBMRactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Meat Plan".toUpperCase() , style: TextStyle(fontSize: 16.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor ,) ,
                  ),
                  child: Row(
                    children: [
                      Text("Meal"),
                    ],
                  ),
                )


          ],),
        ),
      ),
    );
  }
}
