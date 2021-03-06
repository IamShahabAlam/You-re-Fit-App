import 'dart:async';
import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmr_page.dart';
import 'package:youre_fit/screens/gain_Page.dart';
import 'package:youre_fit/screens/loss_Page.dart';
import 'package:youre_fit/components/bmr_brain.dart';


class BMR_Result_Page extends StatelessWidget {
  BMR_Result_Page({this.bmrResult,this.resultText,this.suggestion, this.AVal, this.IVal, this.LactVal, this.MVal, this.SVal, this.MWL , this.WL, this.EWL, this.MWG,this.WG, this.FWG});

  final String bmrResult ;
  final String resultText;
  final String suggestion;
  final String SVal , LactVal, MVal, AVal, IVal;

  // Weight Loss Percentages
  final String MWL , WL , EWL ;

  // Weight Gain Percentages
  final String MWG , WG, FWG;

  double value ;
  double bmr_w ;
  double bmr_h ;
  double bmr_a ;
  double height = 5;
  int weight = 50;
  int age = 20;



  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height  ;
    final _w = MediaQuery.of(context).size.width;

    return
      Scaffold(
        backgroundColor: kBG,
        appBar: AppBar( backgroundColor: kinactiveCardColor,
          title: Center(child: Text("BMR Results".toUpperCase(), style: kBMIAppBar,),),
          leading: AppbarLead(color: Colors.white , icon: Icons.arrow_back_ios, page: BMR_Page(),),
        ),

        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
// TITLE
                  Container(
                      margin: EdgeInsets.all(20) ,
                      child: Text("YOUR BMR",style: kresultTitle,)),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: _h*0.01 , horizontal: _w*0.06),
                      // padding: EdgeInsets.all(12),
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


              BMRResultCard(
                topText: "Daily calorie needs based on Activity level",
                Sed_Value:  SVal,
                Lactive_Value: LactVal ,
                Moderate_Value: MVal ,
                Active_Value: AVal,
                Intense_Value: IVal ,
              ),


              // SizedBox(height: _h*0.04,),

              // BottomButton(
              //   t_margin: 5.0,
              //   color: kinactiveCardColor,
              //   buttonTitle: "RE CALCULATE", onTap: (){Navigator.pop(context);},)

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeBtn(heightB: 0.08, widthB: 0.4 ,
                    t_margin: 0.0,
                     name: "Weight Loss",
                    onpressed:
                        (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Weight_Loss(SedVal: SVal, WL:WL, EWL:EWL ,MWL:MWL ), ));},

                    firstClr: Colors.blueGrey[800] ,
                    lastClr : Color(0xFFE65100),
                  ),

                  HomeBtn(heightB: 0.08, widthB: 0.4 ,
                    t_margin: 0.0,
                    name: "Weight Gain",
                    onpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        Weight_Gain(
                          SedVal: SVal,
                          FWG: FWG,
                          MWG: MWG,
                          WG: WG,
                    )));
                      },

                    firstClr: Color(0xFFE65100) ,
                    lastClr : Colors.blueGrey[800],
                  ),
                ],
              )

            ],),
        ),

      );
  }
}


