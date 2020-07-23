import 'package:Orsul_v1/Setup/welcome.dart';
import 'package:Orsul_v1/models/theme.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orsul',
      theme: orsulTheme(),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

