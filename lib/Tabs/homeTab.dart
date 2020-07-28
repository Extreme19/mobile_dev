import 'package:flutter/material.dart';
 import 'package:carousel_pro/carousel_pro.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/c2.jpg'),
          AssetImage('assets/images/c3.jpg'),
          AssetImage('assets/images/c4.jpg'),
          AssetImage('assets/images/c5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 2),
      ),
    );
    return Scaffold(
        body: ListView(
          children: [
            image_carousel
          ]
        ),
      );
  }
}