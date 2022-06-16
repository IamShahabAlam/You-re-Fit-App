import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_Result.dart';


class Weight_Loss extends StatefulWidget {

  @override
  _Weight_LossState createState() => _Weight_LossState();
}

class _Weight_LossState extends State<Weight_Loss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: kBG,
      appBar: AppBar( centerTitle: true, backgroundColor: kactiveCardColor,
        title: Text("Weight Loss"),
        leading: AppbarLead(page: BMR_Result_Page(), icon: Icons.arrow_back_ios,),
      ),

      body: Column(
        children: [
          Container( margin: EdgeInsets.all(15) ,
              alignment: Alignment.topLeft,
              child: Text("Weight Loss Guide",style: kweightGuide,)),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text("The results show a number of daily calorie estimates that can be used as a guideline for how many calories to consume each day to maintain, lose weight at a chosen rate.",
               textAlign: TextAlign.justify , style: TextStyle(fontSize: 16,),)),


        ],
      )  ,
    );
  }
}









