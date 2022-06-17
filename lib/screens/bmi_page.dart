import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/conatiners.dart';
import 'package:youre_fit/components/icon_content.dart';
import 'package:youre_fit/screens/home.dart';
import 'bmi_Result.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/components/bmi_brain.dart';


enum Gender {
  male,
  female,
}


class BMI_Page extends StatefulWidget {
  @override
  _BMI_PageState createState() => _BMI_PageState();
}

class _BMI_PageState extends State<BMI_Page> {

  Timer _timer;
  Gender selectedGender;
  double height = 5;
  int weight = 50;
  int age = 20;

  Color maleCardColor = kinactiveCardColor;
  Color femaleCardColor = kinactiveCardColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      // male
      if (maleCardColor == kinactiveCardColor) {
        maleCardColor = kactiveCardColor;
        femaleCardColor = kinactiveCardColor;
      } else {
        maleCardColor = kinactiveCardColor;
      }
    }

    // Female
    if (selectedGender == Gender.female) {

      if (femaleCardColor == kinactiveCardColor) {
        femaleCardColor = kactiveCardColor;
        maleCardColor = kinactiveCardColor;
      } else {
        femaleCardColor = kinactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBG ,
      appBar: AppBar(
        backgroundColor: kactiveCardColor,
        title: Center(child: Text("Body Mass Index".toUpperCase(), style: kBMIAppBar,)),
        leadingWidth: 40.0,
        centerTitle: true,
        leading: AppbarLead(color: Colors.white , icon: FontAwesomeIcons.home , page: Home(),
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
                    print("Male btn is pressed");
                  });
                },
                colour: selectedGender == Gender.male
                    ? kactiveCardColor
                    : kinactiveCardColor,
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
                        print("Female btn is pressed");
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )),
            ],
          )),
          Expanded(
            child: ContainerWid(
              colour: kinactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(height: 2,),
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
                    // overlayColor: Colors.white10,
                    // thumbColor: Color(0xffFFFF9800),
                    // activeTrackColor: Color(0xffFFFF9800),
                  ),
                    child: Slider(value: height.toDouble(),
                    min: 3.0 ,
                    max: 7.0,
                    activeColor: Color(0xFFFF9800) ,
                    inactiveColor: Colors.orange[800] ,
                    onChanged: (double newValue){
                      setState(() {
                            height = newValue;
                      });
                        // print(newValue);
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
                        colour: kinactiveCardColor,
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
                        colour: kinactiveCardColor,
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
                            ),

                          ], ),)),
                ],
              )),

          BottomButton(
            t_margin: 10,
            onTap: (){
            BmiCalculator calc = BmiCalculator(height: height, weight: weight);
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                // BMR_Page(),
            BMI_Result_Page(
                bmiResult: calc.calculateBMI() ,
                resultText: calc.getResult() ,
                suggestion: calc.getSuggest() ,
            ),
            ));},
            color: kbcc,
          buttonTitle: "CALCULATE BMI",)
        ],
      ),
    );
  }
}



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

  Timer _timer ;

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
          color:  Colors.orange ,
          shape: BoxShape.circle,
        ),
        child: Icon(widget.icon,color: Colors.orange[900],) ,
      ),
    );
  }
}

