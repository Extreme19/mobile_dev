import 'package:Orsul_v1/Pages/home.dart';
import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'signUpPage.dart';


class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text('Sign in'),
            onPressed: navigateToSignIn,
            ),
          RaisedButton(
          child: Text('Sign Up'),
          onPressed: navigateToSignUp,
          ),
          RaisedButton(
          child: Text('Test Home'),
          onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
          )
        ]
      ),
      
    );
  }
  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),fullscreenDialog: true));
  }

  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(), fullscreenDialog: true));
      }
    }
    
    