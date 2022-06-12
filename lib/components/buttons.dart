import 'package:flutter/material.dart';
import 'constants.dart';

class AppbarLead extends StatelessWidget {

 AppbarLead({this.icon, this.page });

 final IconData icon;
 final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => page ));},
      child: Icon(icon, color: Colors.white,),
    );
  }
}

// =====================================================================


class BottomButton extends StatelessWidget {

  BottomButton({this.buttonTitle,this.onTap, this.color});

  final Function onTap;
  final String buttonTitle ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
             topRight: Radius.circular(20),
             topLeft: Radius.circular(20)
            )
        ),
        child: Center(child: Text(buttonTitle,style:kbbs,)),
        margin: EdgeInsets.only(top: 10),
        height: kbch,
        width: double.infinity,
        
      ),
    );
  }
}

// =====================================================================


class HomeBtn extends StatelessWidget {
  const HomeBtn({ @required double h, @required double w,this.t_margin, this.name , this.screen,this.begin, this.end}) : _h = h, _w = w ;

  final double _h,_w, t_margin ;
  final String name ;
  final Widget screen ;
  final Alignment begin, end;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: _h*t_margin),
      height: _h*0.08,
      width: _w*0.6,
      decoration: BoxDecoration(
        boxShadow: [ kBtnBoxShadow],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient( begin: begin, end: end ,colors: [Colors.orange[500], Colors.blueGrey[800], ]),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30)),
          enableFeedback: false,
          // side: BorderSide(),
          // elevation: 12,
          // animationDuration: Duration(seconds: 5),
          // tapTargetSize: MaterialTapTargetSize.,
          textStyle: TextStyle( fontSize: 17.0, fontWeight: FontWeight.bold ),
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => screen ));},
        child: Text(name), ),
    );
  }
}
