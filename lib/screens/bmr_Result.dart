import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatinerWid.dart';
import 'package:youre_fit/components/constants.dart';


class BMR_Result_Page extends StatelessWidget {
  BMR_Result_Page({this.bmrResult,this.resultText,this.suggestion});

  final String bmrResult ;
  final String resultText;
  final String suggestion;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Center(child: Text("BMR Results".toUpperCase(), style: kBMIAppBar,),),),

        body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Container( margin: EdgeInsets.only(left:30,top:25) ,child: Text("YOUR BMR",style: kresultTitle,))),
            Expanded(flex: 5, child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ContainerWid(
                colour: Colors.grey[900] ,
                cardChild: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText,style: kResultTextColor ,),

                    Text(bmrResult,style: kBMIStyle,),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(suggestion,style: kBMIsuggest, textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
            ),
            ),

            BottomButton(buttonTitle: "RE CALCULATE", onTap: (){Navigator.pop(context);},)
          ],),

      );
  }
}


