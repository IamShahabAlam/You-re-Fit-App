import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmi_page.dart';

 
 class BMI_Result_Page extends StatelessWidget {
BMI_Result_Page({this.bmiResult,this.resultText,this.suggestion});

  final String bmiResult ;
  final String resultText;
  final String suggestion;

  
   @override
   Widget build(BuildContext context) {

     final _h = MediaQuery.of(context).size.height  ;
     final _w = MediaQuery.of(context).size.width;

     return Scaffold(
  backgroundColor: Color(0xFFF3E6D8),
      appBar: AppBar(
        backgroundColor: kactiveCardColor,
        title: Center(child: Text("BMI Results".toUpperCase(), style: kBMIAppBar,),),
        leading: AppbarLead(icon: Icons.arrow_back_ios , page: BMI_Page() ,),
      ),

      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Expanded(child: Container( margin: EdgeInsets.only(left:30,top:25) ,
            child: Text("YOUR BMI",style: kresultTitle,))),

        ResultCard(
          resultValue: bmiResult,
          resultText: resultText,
          suggestion: suggestion,
          bgCardClr: kinactiveCardColor,
          resultTextBgClr: kactiveCardColor,
          suggestionBgClr: Colors.orange[900],
        ),

          SizedBox(height: _h*0.05,),

      BottomButton(buttonTitle: "RE CALCULATE",
        color: Colors.orange,
        onTap: (){Navigator.pop(context);},)
      ],),
   
    );
   }
 }


