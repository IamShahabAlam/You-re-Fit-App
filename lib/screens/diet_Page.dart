
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



  // Calories in Common Foods
  // Fruits
  var _fruits = ["Apple","Banana","Grapes","Orange","Pear","Peach","Pineapple","Strawberry","Watermelon","Mango","Peach","Apricot","Strawberry","Cherry","Date","lychee",];
  var _fruitsSS = ["1 (4 oz.)","1 (6 oz.)","1 cup","1 (4 oz.)","1 (5 oz.)","1 (6 oz.)","1 cup","1 cup","1 cup","1 (336 g)","1 (147 g)","1 (35 g)","1 (10 g)","3.5 oz.","1 (7.1 g)","1 (9.6 g)",]; // SS is Serving Size
  var _fruitsCal = ["59","151","100","53","82","67","82","53","50","201","50","17","4","50","20","6",]; // Calories

  // Vegetables
  var _vegi = ["Carrots","Cucumber","Eggplant","Lettuce","Tomato","Asparagus","Broccoli","Potato","Onion","Lemon","Spinach","Turnip",];
  var _vegiSS = ["1 cup", "4 oz.","1 cup","1 cup","1 cup","1 cup","1 cup","1 (396 g)","1 (110g)","1 (58 g)","1 cup (30 g)","1 (122g)",];
  var _vegiCal = ["50","17","35","5","22","27","45","283","44","17","7","34",];

  // Proteins
  var _protein = ["Beef","Chicken","Tofu","Egg","Fish","Shrimp","Mutton",];
  var _proteinSS = ["2 oz.","2 oz","4 oz.","1 large","2 oz.","2 oz.","3 oz.",];
  var _proteinCal = ["142","136","86","78","136","56","250",];

  // Common Meals
  var _cmeal = ["White Bread","Butter","Caesar Salad","Cheese Burger","Hamburger","Chocolate","corn","Pizza ","Potato","Rice ","Sandwich","Fries","Chips","Pasta","Biscuits","Rusks","Toast","Cake","Bun",];
  var _cmealSS = ["1 slice","1 tsp","3 cups","1 sandwich","1 sandwich","1 oz.","1 cup","1 slice","6 oz.","1 cup","2 slice","3.5 oz.","3.5 oz.","3.5 oz.","3.5 oz.","3.5 oz.","1 slice","3.5 oz.","3.5 oz."];
  var _cmealCal = ["75","102","481","285","250","155","132","285","130","206","200","312","536","131","353","407","85","257","310"];

  // Beverages/ Dairy
  var _bev = ["Tea","Coffee","cappuccino","Coke","Diet Coke","Milk","Orange Juice","Apple Cider","Yogurt","Mango Shake","Banana Shake","Strawberry Shake","Tea","Coffee","cappuccino",];
  var _bevSS = ["1 cup","1 cup","1 cup","1 can","1 can","1 cup","1 cup","1 cup","1 cup ","1 cup","1 cup","1 cup","1 cup","1 cup","1 cup",];
  var _bevCal = ["40","12", "70","150","0","102","111","117","154","306","230","130","40","12", "70",];


  // Energy from Common food components
  var _foodComponents = ["Fat","Protein","Carbohydrates","Fiber","Ethanola","Organic Acid","Polyols",];
  var _fcKJ = ["37","17","17","8","29","13","10",];
  var _fcCalorie = ["8.8","4.1","4.1","1.9","6.9","3.1","2.4",];

  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold( backgroundColor: kBG,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Meat Plan".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),
// 1200 Plan
// Heading
                Container(
                  height: _h*0.06,
                  decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                  ),

                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Meal", style: kListHead),
                      Text("1200 Cal Plan", style: kListHead), SizedBox(width: _w*0.01,)
                      // Text("1500 Cal Plan", style: kListHead),
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
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_meal[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) ,
                              child: Text(_oneWLPlan[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          // SizedBox( width: _w*0.4,
                          //     child: Text(_twoWLPlan[index], textAlign: TextAlign.start, style: kListBody)),
                        ],
                      ),
                    );
                  }
              ),

              SizedBox(height: _h*0.05,),
// 1500 Plan
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Meal", style: kListHead),
                    Text("1500 Cal Plan", style: kListHead), SizedBox(width: _w*0.01,)
                    // Text("1500 Cal Plan", style: kListHead),
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
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_meal[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) ,
                              child: Text(_twoWLPlan[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          // SizedBox( width: _w*0.4,
                          //     child: Text(_twoWLPlan[index], textAlign: TextAlign.start, style: kListBody)),
                        ],
                      ),
                    );
                  }
              ),


              Label(
                triangleHeight: 30 ,
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.only(right:30),
                    color: kactiveCardColor,
                    height: _h*0.08, width: _w*0.8,
                    alignment: Alignment.center,
                    child: Text("Calories in Common foods".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

              ),

// Calories in Common foods
            // FRUITS
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Fruits", style: kListHead),
                    Text("Serving Size", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _fruits.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_fruits[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_fruitsSS[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.15), width: _w*0.1,
                              child: Text(_fruitsCal[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(height: _h*0.05,),

            // Vegetables
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Vegetables", style: kListHead),
                    Text("Serving Size", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _vegi.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_vegi[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_vegiSS[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.15), width: _w*0.1,
                              child: Text(_vegiCal[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(height: _h*0.05,),


              // Proteins
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Proteins", style: kListHead),
                    Text("Serving Size", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _protein.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_protein[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_proteinSS[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.15), width: _w*0.1,
                              child: Text(_proteinCal[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(height: _h*0.05,),


              // Common Meals
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Common Meals", style: kListHead),
                    Text("Serving Size", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _cmeal.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_cmeal[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_cmealSS[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.15), width: _w*0.1,
                              child: Text(_cmealCal[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(height: _h*0.05,),


              // Beverages
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Beverages", style: kListHead),
                    Text("Serving Size", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _bev.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                              child: Text(_bev[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_bevSS[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.15), width: _w*0.1,
                              child: Text(_bevCal[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),


              // Energy From Food Components

              Label(
                triangleHeight: 30 ,
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.only(right:30),
                    color: kactiveCardColor,
                    height: _h*0.08, width: _w*0.85,
                    alignment: Alignment.center,
                    child: Text("Energy From Common foods".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

              ),
// Heading
              Container(
                height: _h*0.06,
                decoration: BoxDecoration(
                    border: Border.all(color: kactiveCardColor),
                    color: kBMRactiveCardColor
                ),

                child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Food Components", style: kListHead),
                    Text("KJ/Gram", style: kListHead), //SizedBox(width: _w*0.01,)
                    Text("Calories/Gram", style: kListHead),
                  ],
                ),
              ),

// Body

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                  shrinkWrap: true,             // for using multiple containers in ListView
                  itemCount: _foodComponents.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                      ),

                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( width: _w*0.3 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.08),
                              child: Text(_foodComponents[index], textAlign: TextAlign.start, style: kListBody)),

                          Container( padding: EdgeInsets.symmetric(vertical: 2.0) , width: _w*0.25,
                              child: Text(_fcKJ[index], textAlign: TextAlign.start, style:kListBody)),
                          //
                          Container( margin: EdgeInsets.only(left: _w*0.05), width: _w*0.1,
                              child: Text(_fcCalorie[index], textAlign: TextAlign.start, style:kListBody)),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(height: _h*0.05,),


            ],),
        ),
      ),
    );
  }
}
