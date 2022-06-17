import 'dart:math';

import 'package:flutter/material.dart';
import 'package:youre_fit/screens/loss_Page.dart';

class BmrCalculator {
  BmrCalculator({this.height,this.weight, this.age, this.bmr_a, this.bmr_h, this.value, this.bmr_w,});
  final double height;
  final int weight;
  final int age;
  double value ;
  double bmr_w ;
  double bmr_h ;
  double bmr_a ;
  double _bmr ;

  // Activity Levels
  double SedVal;
  double LactiveVal;
  double ModVal;
  double ActVal;
  double IntVal ;

  // Weight Loss Percentages
  double Mwl;
  double Wl;
  double Ewl;

  String calculateBMR(){
    _bmr =  value + (bmr_w * weight) + (bmr_h * (height*30.48)) - (bmr_a * age)  ;   // height multiplying with 30.48 to convert ft to cm
    return  _bmr.toStringAsFixed(0);  // will take no value after decimal i.e 20
  }

  String SedentaryVal(){
    SedVal = _bmr*(1.2);
    return SedVal.toStringAsFixed(0);
  }

  String LightactiveVal(){
    LactiveVal = _bmr*(1.375);
    return LactiveVal.toStringAsFixed(0);
  }

  String ModerateVal(){
    ModVal = _bmr*(1.55);
    return ModVal.toStringAsFixed(0);
  }

  String ActiveVal(){
    ActVal = _bmr*(1.725);
    return ActVal.toStringAsFixed(0);
  }

  String IntenseVal(){
    IntVal = _bmr*(1.9);
    return IntVal.toStringAsFixed(0);
  }

 // Weight Loss Percentages

  String MildWL(){
    Mwl = (SedVal*0.85);
    return Mwl.toStringAsFixed(0);
  }

  String WeightL(){
    Wl = (SedVal*0.70);
    return Wl.toStringAsFixed(0);
  }

  String ExtremeWL(){
    Ewl = (SedVal* 0.55);
    return Ewl.toStringAsFixed(0);
  }


  String getResult(){
     if (_bmr >= 25){
      return "OVERWEIGHT";
    }else if(_bmr > 18.5){
      return "NORMAL";
    }else{
      return "UNDERWEIGHT";
    }
  }

  String getSuggest(){
    if (_bmr >= 25){
      return "Oh ! it looks You have Forgotten your diet plan for long.";
    }else if(_bmr > 18.5){
      return "Your BMI is upto the mark, Maintain it and Enjoy !";
    }else{
      return "Eat more Stress less buddy, Try some Chicken tonight.";
    }
  }
}