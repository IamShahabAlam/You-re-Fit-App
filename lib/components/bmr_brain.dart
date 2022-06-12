import 'dart:math';

import 'package:flutter/material.dart';

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

  String calculateBMR(){
    _bmr =  value + (bmr_w * weight) + (bmr_h * (height*30.48)) - (bmr_a * age)  ;   // height multiplying with 30.48 to convert ft to cm
    return  _bmr.toStringAsFixed(0);  // will take no value after decimal i.e 20
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