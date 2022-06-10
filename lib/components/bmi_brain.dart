import 'dart:math';

import 'package:flutter/material.dart';

class BmiCalculator {
       BmiCalculator({this.height,this.weight});
  final double height;
  final int weight;

  double _bmi ;

  String calculateBMI(){
     _bmi = weight/ pow(height*0.3048, 2);
   return  _bmi.toStringAsFixed(1);  // will take only  1 value after decimal i.e 20.1
  }

  String getResult(){
    if (_bmi >= 30) {
      return "Obese";
    } else if (_bmi >= 25){
      return "OVERWEIGHT";
    }else if(_bmi > 18.5){
      return "NORMAL";
    }else{
      return "UNDERWEIGHT";
    }
  }
  String getSuggest(){
    if (_bmi >= 30) {
      return "It Indicatesz that you have obesity. Your health is at risk if you don't lose weight.";
    } else if (_bmi >= 25){
      return "Oh ! it looks You have Forgotten your diet plan for long.";
    }else if(_bmi > 18.5){
      return "Your BMI is upto the mark, Maintain it and Enjoy !";
    }else{
      return "Eat more Stress less buddy, Try some Chicken tonight.";
    }
  }
}