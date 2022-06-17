import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:youre_fit/components/bmr_brain.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/icon_content.dart';
import 'package:youre_fit/screens/bmr_Result.dart';
import 'package:youre_fit/components/constants.dart';
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

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffe3dcdc) ,
      appBar: AppBar( backgroundColor: kinactiveCardColor,
        title: Center(child: Text("basal metabolic rate".toUpperCase(), style: kBMIAppBar,)),
        leadingWidth: 40.0,
        centerTitle: true,
        leading: AppbarLead(color: Colors.white , icon: FontAwesomeIcons.home , page: Home(),)
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
            t_margin: 0.0,
            color: kinactiveCardColor,
            buttonTitle: "CALCULATE BMR",
            onTap: (){
            BmrCalculator calc = BmrCalculator(
                height: height, weight: weight , age: age , bmr_a: bmr_a , bmr_h: bmr_h , bmr_w: bmr_w , value: value);

            if (selectedGender == Gender.female || selectedGender == Gender.male ) {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  BMR_Result_Page(
                    bmrResult: calc.calculateBMR() ,
                    resultText: calc.getResult() ,
                    suggestion: calc.getSuggest() ,
                    SVal: calc.SedentaryVal(),
                    LactVal: calc.LightactiveVal(),
                    MVal: calc.ModerateVal(),
                    AVal: calc.ActiveVal(),
                    IVal: calc.IntenseVal(),
                    MWL: calc.MildWL(),
                    WL: calc.WeightL(),
                    EWL: calc.ExtremeWL(),

                  ),
              ));
            } else {

// Motion Toast
              MotionToast.error(
                width: _w*0.8,
                height: _h*0.12,
                title: Text("Error", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                description: Text("Please Select the Gender.", style: TextStyle(fontSize: 16,),),
                animationType: AnimationType.fromTop,
                position: MotionToastPosition.top,
                borderRadius: 10.0,
                iconSize: 45.0,
                barrierColor: Colors.black26,
                toastDuration: Duration(seconds: 2),
                layoutOrientation: ToastOrientation.ltr,
                // animationCurve: Curves.elasticOut
              ).show(context);


              print("***ERROR*** \n No Gender is Selected");
            }
            },
          ),
        ],
      ),
    );
  }
}


// =================================================


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


