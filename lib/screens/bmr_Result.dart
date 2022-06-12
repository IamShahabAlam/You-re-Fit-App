import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_page.dart';


class BMR_Result_Page extends StatelessWidget {
  BMR_Result_Page({this.bmrResult,this.resultText,this.suggestion});

  final String bmrResult ;
  final String resultText;
  final String suggestion;


  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height  ;
    final _w = MediaQuery.of(context).size.width;


    return
      Scaffold(
        backgroundColor: kBG,
        appBar: AppBar( backgroundColor: kinactiveCardColor,
          title: Center(child: Text("BMR Results".toUpperCase(), style: kBMIAppBar,),),
          leading: AppbarLead(icon: Icons.arrow_back_ios, page: BMR_Page(),),
        ),

        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container( margin: EdgeInsets.only(left:30,top:25) ,child: Text("YOUR BMR",style: kresultTitle,))),

            ResultCard(
              bgCardClr: kinactiveCardColor,
              resultTextBgClr: kactiveCardColor,
              suggestionBgClr: kBMRactiveCardColor,
              suggestion: suggestion,
              resultText: resultText,
              resultValue: bmrResult,
            ),


            SizedBox(height: _h*0.05,),

            BottomButton(
              color: kinactiveCardColor,
              buttonTitle: "RE CALCULATE", onTap: (){Navigator.pop(context);},)
          ],),

      );
  }
}


