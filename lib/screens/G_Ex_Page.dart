import 'package:clippy_flutter/buttcheek.dart';
import 'package:clippy_flutter/label.dart';
import 'package:clippy_flutter/point.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/constants.dart';

class Gain_Exercise extends StatefulWidget {
  @override
  _Gain_ExerciseState createState() => _Gain_ExerciseState();
}

class _Gain_ExerciseState extends State<Gain_Exercise> {


  var _ex = ["","","","","","","","","","","","",];
  var _ex_dur = ["","","","","","","","","","","","",];
  var _ex_cal = ["","","","","","","","","","","","",];


  // var Begin_w = ["5 x 8 Bench press\n5 x 8 Lat pull-down	\n5 x 12 Cable cross-over	\n5 x 12 Straight-arm pull-down\n5 x 12 Incline dumbbell press\n5 x 12 Prone dumbbell row","5 x 8 Squat\n5 x 8 Overhead press\n5 x 12 Leg extension\n5 x 12 Hamstring curl\n5 x 12 Seated overhead press\n5 x 12 Seated lat raise","\n5 x 8 Triceps dip\n5 x 8 Underhand lat pull-down\n5 x 12 Seated row\n5 x 12 Incline dumbbell curl\n5 x 12 Cable biceps curl\n5 x 12 Cable triceps press","5 x 8 Incline bench press\n5 x 8 Dumbbell pull-over\n5 x 12 EZ-bar upright row\n5 x 12 Dumbbell lateral raise\n5 x 12 Incline dumbbell flye\n5 x 12 Press-up","Friday","Saturday","Sunday",];
  var _weeks = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday",];
  var _mon = [
    "Bench press",
    "Decline press",
    "Seated bench press",
    "Incline dumbbell press",
    "Cable chest flys",
    "Pec deck flys",
    "Lever chest press",
    "Push-ups",
  ];

  var _tue = [
    "Ab crunches"
    ,"Rollouts on a ball or rollout wheel"
    ,"Bent-over rows"
    ,"Lat pull-down"
    ,"Pull-ups"
    ,"Seated cable rows"
    ,"One-arm dumbbell bent rows"
    ,"Machine T-bar row"
  ];

  var _thurs = [
    "Military press"
    ,"Machine shoulder press"
    ,"Lateral raises"
    ,"Front raises"
    ,"Reverse flies"
    ,"Upright rows"
    ,"Dumbbell shrugs"
    ,"Cable rotations (internal and external)"
  ];


  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBG,
      body: SingleChildScrollView(
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
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

            Label(
              triangleHeight: 30 ,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.only(right: 30),
                  color: kactiveCardColor,
                  height: _h*0.08, width: _w*0.5,
                  alignment: Alignment.center,
                  child: Text("Gain Exercise".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

            ),



            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0 , bottom: 20.0),
              child: Text("\t\t\t\t\t\tGaining weight is said to be more difficult than losing it. While losing weight is a common topic, many people cannot gain weight due to some medical condition or genetics." , style: TextStyle(fontSize: 18.0, height: 1.25),),
            ),


// Gain Exercise
// Heading
            Container(
              height: _h*0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: kactiveCardColor),
                  color: kBMRactiveCardColor
              ),

              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Exercise", style: kListHead),
                  // SizedBox(width: _w*0.005,),
                  Text("Duration", style: kListHead),
                  // SizedBox(width: _w*0.01,),
                  Text("Calories", style: kListHead),
                  // Text("1500 Cal Plan", style: kListHead),
                ],
              ),
            ),

// Body

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                shrinkWrap: true,             // for using multiple containers in ListView
                itemCount: _ex.length,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                    ),

                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.08),
                            child: Text(_ex[index], textAlign: TextAlign.start, style: kListBody)),

                        Container( padding: EdgeInsets.symmetric(vertical: 5.0 , ) ,
                            child: Text(_ex_dur[index], textAlign: TextAlign.start, style:kListBody)),

                        //
                        Container(margin: EdgeInsets.only(left: _w*0.25 ),
                            child: Text(_ex_cal[index], textAlign: TextAlign.start, style: kListBody)),
                      ],
                    ),
                  );
                }
            ),

            SizedBox(height: _h*0.05,),


// ====================== Weekly Exercises ==================

            Center(
              child: Container(
                alignment: Alignment.center,
                height: 50, width: 50.0,
                child: Image.asset("assets/ex.png", alignment: Alignment.center,),
              ),
            ),

            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10, bottom: 20.0),
                child: Text("Weekly Weight Gain Schedule" , style: TextStyle(fontSize: 25.0 , color: kBMRactiveCardColor,fontWeight: FontWeight.bold),)),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("\t\t\t\t\t\tInstructions for the full week of advanced training are listed below. Five of those days are lifting days and two are rest days. As indicated, however, you should stay active on rest days.\n\n\t\t\t\t\t\t First, make sure that you are healthy enough for vigorous exercise. If you have been sedentary for some time or if you are returning to exercise after an injury or after pregnancy, check with your healthcare provider for exercise clearance.\n\n\t\t\t\t\t\tNext, always make sure you warm up before you start. This can include some light cardio plus a light set of each exercise." , style: TextStyle(fontSize: 18.0,),),
            ),


// Monday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Monday".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("Chest".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("You'll target primarily the pectoralis major, a fan-shaped muscle that makes up the meaty part of the chest, and the smaller pectoralis minor that lies underneath.\n\nDo 3 sets of 10–12 exercises with 30-60 seconds rest between." , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _mon.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_mon[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),

// Tuesday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Tuesday".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("BAck".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Muscles targeted on day two include the latissimus dorsi and the rhomboids in the back of the body. Your core work will train the abdominal muscles, pelvic floor muscles, and erector spinae.\n\nDo 3 sets of 10-12 exercises with 30-60 seconds rest between." , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _tue.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_tue[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),


// Wednesday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Wednesday".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("Rest".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Rest days are essential to help repair and rebuild both the body and the mind. But a rest day doesn't mean that you have to spend the day on the couch. Include active recovery in your day to get some physical movement without taxing the body. Go for a bike ride or head outdoors for a hike." , style: TextStyle(fontSize: 18.0,),),
            ),





// Thursday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Thursday".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("Shoulder".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("The deltoids are targeted today including the anterior delts (front of the shoulder), posterior delts (back of the shoulder), and medial delts (top of the shoulder). Some of these exercises also target the trapezius muscle which runs along the top half of the spine and fans out over the back of the upper shoulder.\n\nDo 3 sets of 10-12 exercises with 30-60 seconds rest between." , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _thurs.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_thurs[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),


// Friday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("Friday".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("Legs".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("" , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _tue.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_tue[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),


// Saturday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("day".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("BAck".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("" , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _tue.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_tue[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),


// Sunday
            Row(
              children: [


                Label(
                  triangleHeight: 30 ,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      padding: EdgeInsets.only(right: 30),
                      color: kactiveCardColor,
                      height: _h*0.08, width: _w*0.4,
                      alignment: Alignment.center,
                      child: Text("day".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

                ),


                Point(
                  triangleHeight: 20.0,
                  edge: Edge.LEFT,
                  child: Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.only(right: 10.0),
                    // margin: EdgeInsets.only(top: 5.0),
                    color: kBMRactiveCardColor,
                    height: _h*0.1,
                    width: _w*0.48,
                    child:
                    Text("BAck".toUpperCase(), style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("" , style: TextStyle(fontSize: 18.0,),),
            ),

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _tue.length,
                itemBuilder: (context , index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0,vertical: 5.0),
                    child: Text("●\t\t${_tue[index]}", style: TextStyle(fontSize: 18),),
                  );
                }
            ),

            SizedBox(height: _h*0.05,),


          ],
        ),
      ),
    );
  }
}
