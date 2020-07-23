import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isSwitched = true;
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile'),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: ListTile(
                  onTap: () {},
                  title: Text('Joshua'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(Icons.edit),
                )),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 0, 0, 5.0),
                  child: Text(
                    'GENERAL',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ],
            ),
            Card(
              color: Colors.white,
              child: Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 20.0,
                          ),
                          labelText: 'FirstName:',
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: '',
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              size: 20.0,
                            ),
                            labelText: 'LastName:',
                            labelStyle: TextStyle(fontSize: 15.0),
                            hintText: ''),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              size: 20.0,
                            ),
                            labelText: 'Email:',
                            labelStyle: TextStyle(fontSize: 15.0),
                            hintText: ''),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone,
                              size: 20.0,
                            ),
                            labelText: 'Phone:',
                            labelStyle: TextStyle(fontSize: 15.0),
                            hintText: ''),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.location_city,
                              size: 20.0,
                            ),
                            labelText: 'City,State:',
                            labelStyle: TextStyle(fontSize: 15.0),
                            hintText: ''),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'Become a Service Provider',
                      style: TextStyle(),
                    ),
                    trailing: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.tealAccent[300],
                      activeColor: Colors.tealAccent[300],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: ButtonTheme(
                minWidth: 120.0,
                height: 40.0,
                child: RaisedButton(
                  onPressed: () => {},
                  color: Colors.blue,
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
