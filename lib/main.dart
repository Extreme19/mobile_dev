import 'package:Orsul_v1/Setup/welcome.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orsul',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
        
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

