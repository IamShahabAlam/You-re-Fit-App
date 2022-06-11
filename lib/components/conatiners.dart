import 'package:flutter/material.dart';

import 'constants.dart';

class ContainerWid extends StatelessWidget {
  ContainerWid({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        height: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: colour),
      ),
    );
  }
}


// ===================================================================



class ResultCard extends StatelessWidget {
  ResultCard({this.resultText, this.bmiResult, this.suggestion ,this.bgCardClr, this.resultTextBgClr, this.suggestionBgClr  });

  final String resultText , bmiResult , suggestion;
  final Color bgCardClr, resultTextBgClr, suggestionBgClr ;

@override
  Widget build(BuildContext context) {

  final _h = MediaQuery.of(context).size.height  ;
  final _w = MediaQuery.of(context).size.width;

  return Stack(
    alignment: Alignment.center ,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: _h*0.1),
        height: _h*0.45,
        width: _w*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: bgCardClr ,

        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Spacer(),
            // Result Text
            Container( 
                height: _h*0.08,
                width: _w*0.52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: resultTextBgClr, borderRadius: BorderRadius.circular(8),
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
            color: suggestionBgClr,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [kBtnBoxShadow]
        ),
        child: Text(suggestion,style: kBMIsuggest, textAlign: TextAlign.center,),
      ),
    ],
  );
  }
}

// ===================================================================
