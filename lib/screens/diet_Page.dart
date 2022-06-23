
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
  var _oneWLPlan = ["All-bran cereal (125)\n Milk (50)","Cucumber (30)\nAvocado dip (50)","Grilled cheese (300)\nSalad (50)","Walnuts (100)" , "Grilled Chicken (200)\nBrussel sprouts (100)\nQuinoa (105)  "];
  var _twoWLPlan = ["Granola (120)\nGreek yogurt (120)\nBlueberries (40)","Orange (70)","Chicken Vegi soup (300)\nBread (100)","Apple (75)\nPeanut butter (75)","Steak (375)\nMashed potatoes (150)\nAsparagus (75)",];

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
                      padding: EdgeInsets.only(right: 30),
                      color: kBMRactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Meat Plan".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),

// Heading
                Container(
                  height: _h*0.06,
                  decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                  ),

                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Meal", style: kListHead),
                      Text("1200 Cal Plan", style: kListHead),
                      Text("1500 Cal Plan", style: kListHead),
                    ],
                  ),
                ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _meal.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(_meal[index], textAlign: TextAlign.start, style: kListBody), SizedBox(width: _w*0.02,),
                          Text(_oneWLPlan[index], textAlign: TextAlign.start, style:kListBody),
                          Text(_twoWLPlan[index], textAlign: TextAlign.start, style: kListBody),
                        ],
                      ),
                    );
                  }
              ),
          ],),
        ),
      ),
    );
  }
}
