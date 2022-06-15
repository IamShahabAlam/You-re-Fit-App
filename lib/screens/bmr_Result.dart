import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_page.dart';


class BMR_Result_Page extends StatelessWidget {
  BMR_Result_Page({this.bmrResult,this.resultText,this.suggestion, this.AVal, this.IVal, this.LactVal, this.MVal, this.SVal});

  final String bmrResult ;
  final String resultText;
  final String suggestion;
  final String SVal , LactVal, MVal, AVal, IVal;




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

        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
// TITLE
                  Container( margin: EdgeInsets.all(20) ,child: Text("YOUR BMR",style: kresultTitle,)),

                  Container(
                    padding: EdgeInsets.all(12),
                      // height: _h*0.08,
                      // width: _w*0.52,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kactiveCardColor, borderRadius: BorderRadius.circular(8),
                        boxShadow: [kResultBoxShadow],
                      ),
                      child: Text(bmrResult,style: kResultText ,)),

                ],
              ),

              // ResultCard(
              //   bgCardClr: kinactiveCardColor,
              //   resultTextBgClr: kactiveCardColor,
              //   suggestionBgClr: kBMRactiveCardColor,
              //   suggestion: suggestion,
              //   resultText: resultText,
              //   resultValue: bmrResult,
              // ),

              BMRResultCard(
                topText: "Daily calorie needs based on Activity level",
                Sed_Value:  SVal,
                Lactive_Value: LactVal ,
                Moderate_Value: MVal ,
                Active_Value: AVal,
                Intense_Value: IVal ,
              ),


              // SizedBox(height: _h*0.04,),

              BottomButton(
                t_margin: 5.0,
                color: kinactiveCardColor,
                buttonTitle: "RE CALCULATE", onTap: (){Navigator.pop(context);},)
            ],),
        ),

      );
  }
}


