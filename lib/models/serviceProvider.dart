
import 'package:flutter/material.dart';

class ServiceProvider {
  String uid;
  String profession;
  String primaryLocation;
  String currentLocation;
  String rating;
  String level;

  ServiceProvider({
    @required this.uid, 
    this.currentLocation, 
    this.level, 
    this.primaryLocation, 
    this.profession, 
    this.rating}
    );


}