import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//creates a primary color theme
Color primarycolor  = Color(0xff416d6d);
//categories of pets
List<Map> categories = [
  {'name' : 'Cats',
  'iconPath': 'lib/images/cat1.jpg'},
  {'name' : 'Dog',
  'iconPath': 'lib/images/dog.png'},
  {'name' : 'Horse',
  'iconPath': 'lib/images/horse.png'},
  {'name' : 'Parrot',
  'iconPath': 'lib/images/parrot.png'},
  {'name' : 'Rabbit',
  'iconPath': 'lib/images/rabbit.png'},

];
List <Map> drawerItems = [
  {'icon':FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon':Icons.mail_outline, 'title': 'Donation'},
  {'icon':FontAwesomeIcons.plus, 'title': 'Add Pet'},
  {'icon':Icons.favorite_border, 'title': 'Favorites'},
  {'icon':Icons.mail, 'title': 'Messages'},
  {'icon':FontAwesomeIcons.userAlt, 'title': 'Profile'},

];

//List for box shadows
List<BoxShadow> ListShadow = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0,10))
];