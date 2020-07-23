import 'package:Orsul_v1/Pages/editProfile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: ListTile(
                  onTap: () {},
                  title: Text(
                    'Invite Friends',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0),
                  ),
                )),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 0, 0, 10.0),
                  child: Text(
                    'MY ACCOUNT',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            //The Account Card
            Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Edit profile',
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => EditProfile()));
                    },
                    leading: Icon(Icons.person_outline),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Change Password',
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => EditProfile()));
                    },
                    leading: Icon(Icons.lock_outline),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                ],
              ),
            ),
            //End of Account card
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 20.0, 0, 10.0),
                  child: Text(
                    'ABOUT',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            //The About Card
            Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Terms',
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => EditProfile()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'About Us',
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => EditProfile()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Privacy',
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => EditProfile()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Contact',
                    ),
                    onTap: () {
                      // Navigator.of(context).pop();
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (BuildContext context) => EditProfile()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
