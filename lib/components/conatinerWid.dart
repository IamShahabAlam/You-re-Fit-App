import 'package:flutter/material.dart';

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

class ResultCard extends StatelessWidget {
  ResultCard({this.colour, this.child});

  final Color colour;
  final Widget child;

@override
  Widget build(BuildContext context) {

  final _h = MediaQuery.of(context).size.height  ;
  final _w = MediaQuery.of(context).size.width;

  return Container(
    margin: EdgeInsets.only(bottom: _h*0.1),
      height: _h*0.45,
      width: _w*0.9,
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,

      ),
    );
  }
}
