import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youre_fit/components/bmr_brain.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/icon_content.dart';
import 'package:youre_fit/screens/bmr_Result.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';

enum Gender {
  male,
  female,
}


class BMR_Page extends StatefulWidget {
  @override
  _BMR_PageState createState() => _BMR_PageState();
}

class _BMR_PageState extends State<BMR_Page> {

  Timer _timer;
  Gender selectedGender;
  double value ;
  double bmr_w ;
  double bmr_h ;
  double bmr_a ;
  // ----------- BMR Men Values -------------
  double menValue = 88.362;
  double menW = 13.397;
  double menH = 4.799;
  double menA = 5.677;
  // ----------- BMR Women Values -------------
  double womenValue = 447.593;
  double womenW = 9.247;
  double womenH = 3.098;
  double womenA = 4.330;

  double height = 5;
  int weight = 50;
  int age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3dcdc) ,
      appBar: AppBar( backgroundColor: kinactiveCardColor,
        title: Center(child: Text("basal metabolic rate".toUpperCase(), style: kBMIAppBar,)),
        leadingWidth: 40.0,
        centerTitle: true,
        leading: TextButton(
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
            child:
            Icon(FontAwesomeIcons.home, color: Colors.white, size: 20 ,)
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ContainerWid(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                    value = menValue;
                    bmr_w = menW;
                    bmr_h = menH;
                    bmr_a = menA;
                      print("Male btn is pressed");
                  });
                },
                colour: selectedGender == Gender.male
                    ? kinactiveCardColor
                    : kactiveCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: "MALE",
                ),
              )),
              Expanded(
                  flex: 1,
                  child: ContainerWid(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                        value = womenValue;
                        bmr_w = womenW;
                        bmr_h = womenH;
                        bmr_a = womenA;
                        print("Female btn is pressed");
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kinactiveCardColor
                        : kactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )),
            ],
          )),
          Expanded(
            child: ContainerWid(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toStringAsFixed(1), style: kNumberTextStyle),
                      Text(
                        "ft",
                        style: klabelTextStyle,
                      ),
                    ],
                  ),

                  SliderTheme( data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

                 ),
                    child: Slider(value: height.toDouble(),
                    min: 3.0 ,
                    max: 7.0,
                    activeColor: kinactiveCardColor ,
                    inactiveColor: Color(0xFFFFFFFF) ,
                    onChanged: (double newValue){
                      setState(() {
                            height = newValue;
                                          });
                        print(newValue);
                    },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: ContainerWid(
                        colour: kactiveCardColor,
                        cardChild: Column( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("WEIGHT",style: klabelTextStyle,),
                            Text(weight.toString(), style: kNumberTextStyle,),

                            Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,

                                  onpress: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  tapDown: (TapDownDetails details){
                                    _timer = Timer.periodic(Duration(milliseconds: 150), (t) {
                                      setState(( ) {
                                        weight--;

                                      });
                                    });},

                                  tapUp: (TapUpDetails details){
                                    _timer.cancel();
                                  },
                                ),

                                SizedBox(width: 20,),

                                RoundIconButton(icon: FontAwesomeIcons.plus,

                                  onpress: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  tapDown: (TapDownDetails details){
                                    _timer = Timer.periodic(Duration(milliseconds: 150), (t) {
                                      setState(( ) {
                                        weight++;

                                      });
                                    });},

                                  tapUp: (TapUpDetails details){
                                    _timer.cancel();
                                  },
                                ),
                                ],
                            )

                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: ContainerWid(
                        colour: kactiveCardColor,
                        cardChild: Column( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("AGE",style: klabelTextStyle,),
                            Text(age.toString(), style: kNumberTextStyle,),

                            Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,

                                  onpress: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  tapDown: (TapDownDetails details){
                                    _timer = Timer.periodic(Duration(milliseconds: 200), (t) {
                                      setState(( ) {
                                        age--;

                                      });
                                    });},

                                  tapUp: (TapUpDetails details){
                                    _timer.cancel();
                                  },
                                ),

                                SizedBox(width: 20,),

                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,

                                  onpress: (){
                                    setState(() {
                                      age++;
                                    });
                                  } ,

                                  tapDown: (TapDownDetails details){
                                    _timer = Timer.periodic(Duration(milliseconds: 200), (t) {
                                      setState(( ) {
                                        age++;

                                      });
                                    });},

                                  tapUp: (TapUpDetails details){
                                    _timer.cancel();
                                  },



                                ),
                              ],
                            )

                          ],
                        ),
                      )),
                ],
              )
          ),

          BottomButton(
            onTap: (){
            BmrCalculator calc = BmrCalculator(height: height, weight: weight , age: age , bmr_a: bmr_a , bmr_h: bmr_h , bmr_w: bmr_w , value: value);

            if (selectedGender == Gender.female || selectedGender == Gender.male ) {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  BMR_Result_Page(
                    bmrResult: calc.calculateBMR() ,
                    resultText: calc.getResult() ,
                    suggestion: calc.getSuggest() ,
                  ),
              ));
            } else {

              showCupertinoDialog( context: context,      // Cupertino (Ios)
              builder: (BuildContext comtext){
               return CupertinoAlertDialog(
                  // elevation: 10,
                  // backgroundColor: Colors.blueGrey[800],
                  // titleTextStyle: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 28),
                  // contentTextStyle: TextStyle(color: Colors.white),
                  title: Text("Error"),
                  content: Text("Please select the Gender." ),
                  actions: [
                    TextButton(onPressed: (){ Navigator.pop(context);}, child: Text("OK", style: TextStyle( fontSize: 18 ,color: Colors.blue),)),
                  ],
                );
              },
              );

              print("***ERROR*** \n No Gender is Selected");
            }


            },
           
            color: kinactiveCardColor,
          buttonTitle: "CALCULATE BMR",)
        ],
      ),
    );
  }
}

// Fluttertoast.showToast(                  // Tried this toast to display the ERROR. (Failed)
// msg: "Please select the Gender",
// fontSize: 15,
// backgroundColor: Colors.grey[700],
// gravity: ToastGravity.SNACKBAR,
// toastLength: Toast.LENGTH_SHORT,
// );


// =========================================

class RoundIconButton extends StatefulWidget {

  RoundIconButton({this.icon, this.onpress, this.tapDown, this.tapUp});

  final IconData icon;
  final Function onpress ;
  final Function tapDown , tapUp;


  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {

  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: widget.onpress,

      onTapDown: widget.tapDown,


      onTapUp: widget.tapUp,

      onTapCancel:  (){
        _timer.cancel();
      },


      child: Container(
        constraints: BoxConstraints.tightFor( width:50, height: 50 ),
        decoration: BoxDecoration(
          color: kinactiveCardColor,
          shape: BoxShape.circle,
        ),
        child: Icon(widget.icon,color: Colors.black,) ,
      ),
    );
  }
}


