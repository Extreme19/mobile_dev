import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          actions:[],
          elevation: 0.0,
          //leading: Icon(Icons.arrow_back_ios)
        ),
        body: Container(),

      ),
      
    );
  }
}

