import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatinerWid.dart';
import 'package:youre_fit/components/constants.dart';

 
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
        title: Center(child: Text("BMI Results".toUpperCase(), style: kBMIAppBar,),),),

      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(child: Container( margin: EdgeInsets.only(left:30,top:25) ,
            child: Text("YOUR BMI",style: kresultTitle,))),
        Stack(
          alignment: Alignment.center ,
          children: [
            ResultCard(
              colour: kinactiveCardColor ,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
     // Result Text
                  Container( height: 50, width: 200, alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kactiveCardColor, borderRadius: BorderRadius.circular(8),
                        boxShadow: [kResultBoxShadow],
                      ),
                      child: Text(resultText,style: kResultTextColor ,)),

                  Spacer(),

                  Text(bmiResult,style: kBMIStyle,),


                  Container(
                    height: _h*0.009,
                    width: _w*0.4,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                    ),

                  ),
                  Spacer(flex: 2,),

                ],
              ),
              ),

            // SizedBox(height: _h*0.1,),

            Container(
              margin: EdgeInsets.only(top: _h*0.4),
              padding: const EdgeInsets.all(15.0),
              width: _w*0.8,
              decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.circular(8),
                boxShadow: [kBtnBoxShadow]
              ),
              child: Text(suggestion,style: kBMIsuggest, textAlign: TextAlign.center,),
                  ),
          ],
        ),
          SizedBox(height: _h*0.05,),
      BottomButton(buttonTitle: "RE CALCULATE",
        color: Colors.orange,
        onTap: (){Navigator.pop(context);},)
      ],),
   
    );
   }
 }


