import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_Result.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:youre_fit/components/bmr_brain.dart';
import 'package:youre_fit/screens/diet_Page.dart';
import 'package:youre_fit/screens/exercise_Page.dart';
import 'package:youre_fit/screens/home.dart';


 class Weight_Loss extends StatelessWidget {
   Weight_Loss({this.SedVal,this.MWL , this.WL , this.EWL});

   final String SedVal, MWL , WL , EWL;


   @override
   Widget build(BuildContext context) {

     final _h = MediaQuery.of(context).size.height  ;
     final _w = MediaQuery.of(context).size.width;

     return Scaffold( backgroundColor: kBG,
       appBar: AppBar( centerTitle: true, backgroundColor: kBG, elevation: 15.0, shadowColor: kactiveCardColor,
         title: Text("Weight Loss Guide" , style: kweightGuide,),
         leading: AppbarLead(color: kactiveCardColor , page: BMR_Result_Page(SVal: SedVal,), icon: Icons.arrow_back_ios,),
       ),

       body: Column(
         children: [
           // Container( margin: EdgeInsets.all(15) ,
           //     alignment: Alignment.topLeft,
           //     child: Text("Weight Loss Guide",style: kweightGuide,)),

           Container(
               padding: EdgeInsets.only(right: 15, left : 15,bottom: 35, top: 15.0),
               child: Text("✴️  The results show a number of daily calorie estimates that can be used as a guideline for how many calories to consume each day to maintain, lose weight at a chosen rate.",
                 textAlign: TextAlign.justify , style: TextStyle(fontSize: 16,),)),

           Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Guide_List(
                 labelColor: kactiveCardColor ,
                 pointColor: Colors.grey[600],
                 type: "Maintain Weight",
                 kgPerWeek: "0",
                 calories: SedVal ,
               ),

               Guide_List(
                 labelColor: kactiveCardColor ,
                 pointColor: Colors.grey[600],
                 type: "Mild Weight Loss",
                 kgPerWeek: "0.15",
                 calories: MWL,
               ),

               Guide_List(
                 labelColor: kactiveCardColor ,
                 pointColor: Colors.grey[600],
                 type: "Weight Loss",
                 kgPerWeek: "0.3",
                 calories: WL,
               ),

               Guide_List(
                 labelColor: kactiveCardColor ,
                 pointColor: Colors.grey[600],
                 type: "Extreme Loss",
                 kgPerWeek: "0.5",
                 calories: EWL,
               ),

               Container(
                   padding: EdgeInsets.only(right: 15, left : 15,bottom: 15.0, top: 15.0),
                   child: Text("✴️  Please consult with a doctor when losing 0.5 kg or more per week consuming less than  1,200 calories a day may harm you.",
                     textAlign: TextAlign.justify , style: TextStyle(fontSize: 16,),)),

               Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                 children: [
                 HomeBtn(heightB: 0.06, widthB: 0.26 ,
                   t_margin: 0.01,
                   name: "Home",
                   onpressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Home(), ));
                   },

                   firstClr: kinactiveCardColor ,
                   lastClr : kinactiveCardColor,
                 ),

                 HomeBtn(heightB: 0.06, widthB: 0.26 ,
                   t_margin: 0.01,
                   name: "Diet",
                   onpressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Diet_Page(), ));
                   },

                   firstClr: Colors.blueGrey[800] ,
                   lastClr : kactiveCardColor,
                 ),

                   HomeBtn(heightB: 0.06, widthB: 0.26 ,
                     t_margin: 0.01,
                     name: "Exercise",
                     onpressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(), ));
                     },

                     firstClr: Colors.blueGrey[800] ,
                     lastClr : kactiveCardColor,
                   ),

               ],),



             ],
           ),
         ],
       )  ,
     );
   }
 }









