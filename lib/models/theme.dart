import 'package:flutter/material.dart';
//creating a custtom theme
ThemeData orsulTheme(){
  //creating a custom text theme to override material texttheme
  TextTheme _orsulTextTheme(TextTheme base){
    return base.copyWith(
      headline5: base.headline5.copyWith(
        fontFamily: 'Noto Sans',
        fontSize: 22.0,
        color: Colors.black
      ),
      //title is same as headine6
      headline6: base.headline6.copyWith(
        fontFamily: 'Noto Sans',
        fontSize: 18.0,
        color: Colors.blue,
      ),
      //same as display 1. deprecated since 2014
      headline4: base.headline5.copyWith(
        fontFamily: 'Noto Sans',
        fontSize: 24,
        color: Colors.white
      ),
      //same as display 2. deprecated since 2014
      headline3: base.headline5.copyWith(
        fontFamily: 'Noto Sans',
        fontSize: 24,
        color: Colors.grey,
      ),
      caption: base.headline5.copyWith(
        fontFamily: 'Noto Sans',
        fontSize: 24,
        color: Colors.grey,
      ),
      bodyText2: base.bodyText2 
    );
  }
  //where theme can be made light or dark mode
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _orsulTextTheme(base.textTheme),
    //setting the general color theme
    primaryColor: Colors.teal,
    iconTheme: IconThemeData(
      color: Colors.indigo[900],
      size: 20.0,
    )
  );
}