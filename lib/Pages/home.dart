//import 'dart:ffi';

import 'package:Orsul_v1/Pages/Order.dart';
import 'package:Orsul_v1/Pages/editProfile.dart';
import 'package:Orsul_v1/Pages/history.dart';
import 'package:Orsul_v1/Pages/settings.dart';
import 'package:Orsul_v1/Setup/welcome.dart';
import 'package:Orsul_v1/Tabs/homeTab.dart';
import 'package:Orsul_v1/Tabs/jobsTab.dart';
import 'package:Orsul_v1/Tabs/messageTab.dart';
import 'package:Orsul_v1/Tabs/walletTab.dart';
import 'package:Orsul_v1/models/bookAppointment.dart';
import 'package:Orsul_v1/models/jobListSearch.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //had to comment out the constructor.
  final FirebaseUser user;
  //create a constructor so each user is created uniquely
  const Home({Key key, this.user}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int bottomNavIndex = 0;

  //the tabs to be displayed for each bottom nav button
  final tabs = [HomeTab(), JobsTab(), MessageTab(), WalletTab()];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Our professionals are at your service'),
      ),
      body: tabs[bottomNavIndex],
      
      drawer: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Joshua"),
            accountEmail: Text("adeniyioojo09@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                backgroundColor: Colors.grey[400],
              ),
              onTap: () {},
            ),
          ),
          //members of the drawer
          InkWell(
            child: ListTile(
              title: Text('Edit Profile'),
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EditProfile()));
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('History'),
              leading: Icon(Icons.history),
              onTap: () => //temporary route
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => History())),
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Service Orders'),
              leading: Icon(Icons.art_track),
              onTap: () => //temporary route
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Order())),
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Settings()));
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                //Dialogbox on logout
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: new Text("LOG OUT"),
                      content: new Text(
                          "Are you sure you want to log out of this account?"),
                      actions: <Widget>[
                        Row(
                          children: <Widget>[
                            new FlatButton(
                              // Log out button of the dialog
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        WelcomePage()));
                              },
                              child: new Text(
                                "LOG OUT",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            // cancell button of the dialog
                            new FlatButton(
                              child: Text('CANCEL',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.0,
                                  )),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.teal[300],
        currentIndex: bottomNavIndex,
        selectedFontSize: 15.0,
        items: [
          //home button
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            activeIcon: Icon(Icons.home),
            backgroundColor: Colors.blue,
          ),
          //Jobs button
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text("Jobs"),
            activeIcon: Icon(Icons.work),
            backgroundColor: Colors.blue,
          ),
          //Message button
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            title: Text("Message"),
            activeIcon: Icon(Icons.send),
            backgroundColor: Colors.blue,
          ),
          //Wallet icon.
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text("Wallet"),
            activeIcon: Icon(Icons.account_balance_wallet),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (val) {
          setState(() {
            bottomNavIndex = val;
          });
        },
        unselectedItemColor: Colors.grey[100],
        selectedItemColor: Colors.yellowAccent[700],
      ),
      
    );
  }
}
