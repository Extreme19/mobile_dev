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
            SizedBox(height: 15.0),
            Container(
              width: 300.0,
              height: 70.0,
              color: Colors.grey[50],
              child: CircleAvatar(
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                backgroundColor: Colors.grey,
              ),
            ),
            Container(
              width: 415.0,
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
              color: Colors.white,
              child: Text(
                'General',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                    TextFormField(
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
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 20.0,
                          ),
                          labelText: 'LastName:',
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: ''),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            size: 20.0,
                          ),
                          labelText: 'Email:',
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: ''),
                    ),
                    TextFormField(
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
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.location_city,
                            size: 20.0,
                          ),
                          labelText: 'City,State:',
                          labelStyle: TextStyle(fontSize: 15.0),
                          hintText: ''),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(21.0, 0, 30.0, 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'Become a Service Provider',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Container(
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: Colors.blue[100],
                    activeColor: Colors.blue,
                  ),
                ),
              ],
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
