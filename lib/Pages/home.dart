//import 'dart:ffi';

import 'package:Orsul_v1/Tabs/homeTab.dart';
import 'package:Orsul_v1/Tabs/jobsTab.dart';
import 'package:Orsul_v1/Tabs/messageTab.dart';
import 'package:Orsul_v1/Tabs/walletTab.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
    //had to comment out the constructor.
  final FirebaseUser user;
    //create a constructor so each user is created uniquely
  const Home({
    Key key, 
      this.user
    }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int bottomNavIndex = 0;

    //the tabs to be displayed for each bottom nav button
    final tabs =[
      HomeTab(),
      JobsTab(),
      MessageTab(),
      WalletTab()
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orsul'),
      ),
      body: tabs[bottomNavIndex],
      // body: StreamBuilder<DocumentSnapshot>(
      //   stream: Firestore.instance.collection('users').document(user.uid).snapshots(),
      //   //the builder takes a Build context and an async snapshot of type document snapshot
      //   builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot){
      //     if(snapshot.hasError){
      //       return Text('Error: ${snapshot.error}');
      //     }
      //     switch(snapshot.connectionState){
      //         case ConnectionState.waiting :return Text('Loading');
      //         default :
      //             return Text('welcome back ${snapshot.data['firstName']}');
      //     }
      //   },
      //   )
      drawer: Drawer(
        child: ListView(
          children:[
            UserAccountsDrawerHeader(
        accountName: Text("Joshua"), 
        accountEmail: Text("adeniyioojo09@gmail.com"),
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(
            child: Icon(Icons.person_outline, color: Colors.white,),
            backgroundColor: Colors.grey[400],
          ),
          onTap: (){},
        ),
        ),
        //members of the drawer
        InkWell(
          child: ListTile(
            title: Text('Edit Profile'),
            leading: Icon(Icons.edit)
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text('History'),
            leading: Icon(Icons.history)
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings)
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app)
          ),
        ),
          ]
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[300],
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
            icon: Icon(Icons.storage),
            title: Text("Wallet"),
            activeIcon: Icon(Icons.storage),
            backgroundColor: Colors.blue,
            ),
        ],
        onTap: (val){
          setState(() {
            bottomNavIndex = val;
          });
          },
          unselectedItemColor: Colors.grey[100],
          selectedItemColor: Colors.yellowAccent[700],
        ) ,
    );
  }
}