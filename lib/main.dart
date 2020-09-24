import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DrawerScreen.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    // routes: {
    //   'screen2': BuildContext(context) =>Screen2(),
    // },
  ));
}
//homepage houses all the screen and enables them draw upon each other (stacking)
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.green[100], elevation: 0.0,),
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen(),
          
        ]
      ),
    );
  }

}
