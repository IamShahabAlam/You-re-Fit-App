import 'package:flutter/material.dart';
import 'package:youre_fit/components/buttons.dart';
import 'package:youre_fit/components/constants.dart';
import 'package:youre_fit/screens/bmi_page.dart';
import 'package:youre_fit/screens/bmr_page.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _advancedDrawerController = AdvancedDrawerController();


  @override
  Widget build(BuildContext context) {

    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return AdvancedDrawer(
      backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),

      drawer:SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/flutter_logo.png',
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text('Profile'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite),
                  title: Text('Favourites'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                Spacer(),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ) ,

      child: Scaffold(
        backgroundColor: kBG,
        appBar: AppBar(backgroundColor: kBG, elevation: 0.0,
          leading:IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu, color: kactiveCardColor, size: 30.0,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),

        ),
        body: Column(

          mainAxisSize: MainAxisSize.max ,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
// LOGO
            Align( alignment: Alignment.center,
              child:  Image.asset("assets/Youre-Icon3.png", height: _h*0.25 , width: _w*0.6, )),

// Text
            Container( margin: EdgeInsets.symmetric(horizontal: _w*0.06 , vertical: _h*0.06),
              child: Text("The You’re Fit App is a BMR and BMI mobile application which avoids more manual hours that need to spend in personally to calculate and finds the Body Mass Index and Basal Metabolic Rate for a particular person at a single click.",
                style: TextStyle(fontSize: 15, height: 1.35 ), textAlign: TextAlign.justify,),
            ),

// BMI Button
            HomeBtn(
              heightB: 0.08,
              widthB: 0.6,
              name: "Body Mass Index",
              onpressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => BMI_Page(), ));},
              t_margin: 0.04,
              firstClr: Colors.orange[500],
              lastClr : Colors.blueGrey[800],
            ),

// BMR Button
            HomeBtn(
              heightB: 0.08,
              widthB: 0.6,
            name: "Basal Metabolic Rate",
              t_margin: 0.04,
              onpressed:  (){ Navigator.push(context, MaterialPageRoute(builder: (context) => BMR_Page(), ));},
              lastClr: Colors.orange[500],
              firstClr: Colors.blueGrey[800],
            ),



          ],
        ),
      ),
    );
  }
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

