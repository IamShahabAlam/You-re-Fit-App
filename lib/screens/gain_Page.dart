import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_Result.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:youre_fit/components/bmr_brain.dart';
import 'package:youre_fit/screens/home.dart';

import 'G_diet_Page.dart';


class Weight_Gain extends StatelessWidget {
  Weight_Gain({this.SedVal,this.MWG , this.WG , this.FWG});

  final String SedVal, MWG , WG , FWG;


  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height  ;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold( backgroundColor: kBG,
      appBar: AppBar( centerTitle: true, backgroundColor: kinactiveCardColor, elevation: 15.0, shadowColor: kactiveCardColor,
        title: Text("Weight Gain Guide" , style: kweightGuide,),
        leading: AppbarLead(color: kactiveCardColor , page: BMR_Result_Page(SVal: SedVal,), icon: Icons.arrow_back_ios,),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container( margin: EdgeInsets.all(15) ,
            //     alignment: Alignment.topLeft,
            //     child: Text("Weight Loss Guide",style: kweightGuide,)),

            Container(
                padding: EdgeInsets.only(right: 15, left : 15,bottom: 35, top: 25.0),
                child: Text("🔶  The results show a number of daily calorie estimates that can be used as a guideline for how many calories to consume each day to maintain, gain weight at a chosen rate.",
                  textAlign: TextAlign.justify , style: TextStyle(fontSize: 16,),)),

            Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Guide_List(
                  labelColor: Colors.grey[600] ,
                  pointColor: kactiveCardColor,
                  type: "Maintain Weight",
                  kgPerWeek: "0",
                  calories: SedVal ,
                ),

                Guide_List(
                  labelColor: Colors.grey[600] ,
                  pointColor: kactiveCardColor,
                  type: "Mild Weight Gain",
                  kgPerWeek: "0.15",
                  calories: MWG,
                ),

                Guide_List(
                  labelColor: Colors.grey[600] ,
                  pointColor: kactiveCardColor,
                  type: "Weight Gain",
                  kgPerWeek: "0.3",
                  calories: WG,
                ),

                Guide_List(
                  labelColor: Colors.grey[600] ,
                  pointColor: kactiveCardColor,
                  type: "Fast Gain",
                  kgPerWeek: "0.5",
                  calories: FWG,
                ),

                SizedBox(height: _h*0.08 ,),

                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    HomeBtn(heightB: 0.06, widthB: 0.26 ,
                      t_margin: 0.01,
                      name: "Home",
                      onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(), ));
                      },

                      firstClr: kactiveCardColor ,
                      lastClr : kactiveCardColor,
                    ),
// Diet
                    HomeBtn(heightB: 0.06, widthB: 0.26 ,
                      t_margin: 0.01,
                      name: "Diet",
                      onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Gain_Diet_Page(), ));
                      },

                      firstClr: Colors.blueGrey[800] ,
                      lastClr : kactiveCardColor,
                    ),

// Exercise
                    HomeBtn(heightB: 0.06, widthB: 0.26 ,
                      t_margin: 0.01,
                      name: "Exercise",
                      onpressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(), ));
                      },

                      firstClr: Colors.blueGrey[800] ,
                      lastClr : kactiveCardColor,
                    ),

                  ],),



              ],
            ),
          ],
        ),
      )  ,
    );
  }
}









