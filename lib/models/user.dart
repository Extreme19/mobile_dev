

import 'package:flutter/cupertino.dart';

class User {
  String uid;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String address;
  bool isProvider;


  User({@required this.uid, 
  this.address, 
  this.isProvider, 
  this.email, 
  this.firstName, 
  this.lastName, 
  this.phoneNumber});
  
}