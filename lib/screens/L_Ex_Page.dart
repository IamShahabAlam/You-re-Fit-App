import 'package:clippy_flutter/buttcheek.dart';
import 'package:clippy_flutter/label.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/constants.dart';

class Loss_Exercise extends StatefulWidget {
  @override
  _Loss_ExerciseState createState() => _Loss_ExerciseState();
}

class _Loss_ExerciseState extends State<Loss_Exercise> {

  var _ex = ["Walking","Running","Cycling","Weight Training","Interval Training","Backstroke","Breaststroke","Butterfly","Yoga","Pilates",];
  var _ex_dur = ["1 hour","1 hour","1 hour","1 hour","1 hour","1 hour","1 hour","1 hour","1 hour","1 hour",];
  var _ex_cal = ["300","800","600","250","400","600","700","800","300","250",];

  var _weeks = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday",];
  var _begin_w = ["Lower body Strength\n3×12 dumbbell goblet squat\n3×12 dumbbell Deadlift\n3×20 walking lunge with dumbbells\n3×12 leg curl ","Low intensity cardio for at least 20 m\nChoose walking, light jogging,\nor your preferred method of cardio\n— even better if you can do it outside!","Upper body strength\n3×12 pullup or lat pulldown\n3×12 dumbbell overhead press\n3×12 dumbbell row\n3×12 dumbbell bench press","Low intensity cardio for\nat least 20 minutes","Interval conditioning\nSquat or jump squat\nBox stepup or power stepup\nAlternating lunge or jumping lunge\nLateral box stepup or ice skater\nBurpee","3x15 Squat With Dumbbell\n2x15 Pushups on the Ball\n3xOn each Side Split Squat\n3x30 Seated Rotation for Abs","REST",];
  var _inter_w = ["Lower body strength\n3×12 kettlebell goblet squat\n3×12 kettlebell deadlift\n3×20 walking lunge with dumbbells (10 each side)\nOptional: 3×12 leg curl and extension","Low intensity cardio for at least 20 minutes\nBump up time or intensity by 5–10% from Beginners Guide.","Upper body strength\n3×12 pullup or lat pulldown\n3×12 dumbbell overhead press\n3×12 dumbbell row\n3×12 dumbbell bench press","3×8 barbell back squat or dumbbell/kettlebell goblet squat\n3×8 barbell or kettlebell deadlift\n3×16 walking lunge with barbell or dumbbells (8 each side)\n3×10 leg curl and leg extension (keep reps higher on these isolation movements)","Conditioning\nSquat or jump squat\nBox stepup or power stepup\nAlternating lunge or jumping lunge\nLateral box stepup or ice skater\nBurpee","3×8 barbell back squat or dumbbell/kettlebell goblet squat\n3×8 barbell or kettlebell deadlift\n3×16 walking lunge with barbell or dumbbells (8 each side)\n3×10 leg curl and leg extension","REST",];
  var _adv_w = ["Lower body strength\n3×8 barbell back squat or dumbbell/kettlebell goblet squat\n4×8 barbell or kettlebell deadlift\n4×16 walking lunge with barbell or dumbbells (8 each side)\n4×10 leg curl and extension.","Low intensity cardio for at least 60 minutes\nBump up time or intensity by 5–10% from Intermediate.","Upper body strength\n3×8 pullup or lat pulldown\n3×8 barbell or dumbbell overhead press\n3×8 barbell or dumbbell rows\n3×8 barbell or dumbbell bench press\n3×10 biceps curl and triceps extension.","Interval training/conditioning\nSquat or jump squat\nBox stepup or power stepup\nAlternating lunge or jumping lunge\nLateral box stepup\nIce skater\nBurpee","4x15 Squat With Dumbbell\n4x30 Seated Rotation for Abs\n4x15 Pushups on the Ball\n4xOn each Side Split Squat","4x15 Jumping Jacks\n4x15 Front Lunge With Chest Press\n4x20 Med Ball Push Ups\n4x30 Mountain Climbers","REST",];

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
                  child: Image.asset("assets/loss_ex.jpg",
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
                  child: Text("Loss Exercise".toUpperCase() , style: TextStyle(fontSize: 18.0,color: kBG, fontWeight: FontWeight.bold),)),

            ),
// Loss Exercise
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


// Heading
            Container(
              height: _h*0.06,
              decoration: BoxDecoration(
                  border: Border.all(color: kactiveCardColor),
                  color: kBMRactiveCardColor
              ),

              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Days", style: kListHead),
                  // SizedBox(width: _w*0.005,),
                  Text("Exercises", style: kListHead),
                  // SizedBox(width: _w*0.01,),
                  // Text("Calories", style: kListHead),
                  // Text("1500 Cal Plan", style: kListHead),
                ],
              ),
            ),

// Body

            ListView.builder(
                physics: NeverScrollableScrollPhysics(),  // For Allowing scrolling with in SingleChildScrollView
                shrinkWrap: true,             // for using multiple containers in ListView
                itemCount: _weeks.length,
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: kactiveCardColor), left: BorderSide(color: kactiveCardColor), bottom: BorderSide(color: kactiveCardColor)) ,
                    ),

                    child: Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.05,right: _w*0.01),
                            child: Text(_weeks[index], textAlign: TextAlign.start, style: kListBody)),

                        Container( padding: EdgeInsets.symmetric(vertical: 5.0 , ) ,
                            child: Text(_begin_w[index], textAlign: TextAlign.start, style:kListBody)),

                      ],
                    ),
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
