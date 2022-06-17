import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_Result.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:youre_fit/components/bmr_brain.dart';


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
               child: Text("The results show a number of daily calorie estimates that can be used as a guideline for how many calories to consume each day to maintain, lose weight at a chosen rate.",
                 textAlign: TextAlign.justify , style: TextStyle(fontSize: 16,),)),

           Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Guide_List(
                 type: "Maintain Weight",
                 kgPerWeek: "0",
                 calories: SedVal ,
               ),

               Guide_List(
                 type: "Mild Weight Loss",
                 kgPerWeek: "0.15",
                 calories: MWL,
               ),

               Guide_List(
                 type: "Weight Loss",
                 kgPerWeek: "0.3",
                 calories: WL,
               ),

               Guide_List(
                 type: "Extreme Loss",
                 kgPerWeek: "0.5",
                 calories: EWL,
               ),


             ],
           ),
         ],
       )  ,
     );
   }
 }









