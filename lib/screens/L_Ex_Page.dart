import 'package:clippy_flutter/buttcheek.dart';
import 'package:clippy_flutter/label.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/constants.dart';

class Loss_Exercise extends StatefulWidget {
  @override
  _Loss_ExerciseState createState() => _Loss_ExerciseState();
}

class _Loss_ExerciseState extends State<Loss_Exercise> {

  var _ex = ["","","","","","","","","","","",""];
  var _ex_dur = ["","","","","","","","","","","",""];
  var _ex_cal = ["","","","","","","","","","","",""];
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
                  Text("Duration", style: kListHead),
                  SizedBox(width: _w*0.01,),
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
                        Container( width: _w*0.25 , margin: EdgeInsets.only(left: _w*0.1,right: _w*0.05),
                            child: Text(_ex[index], textAlign: TextAlign.start, style: kListBody)),

                        Container( padding: EdgeInsets.symmetric(vertical: 2.0) ,
                            child: Text(_ex_dur[index], textAlign: TextAlign.start, style:kListBody)),

                        //
                        SizedBox( width: _w*0.4,
                            child: Text(_ex_cal[index], textAlign: TextAlign.start, style: kListBody)),
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
