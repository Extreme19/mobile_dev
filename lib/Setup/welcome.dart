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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            color: Colors.teal[400],
            child: Text('Sign In', style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.white)),
            onPressed: navigateToSignIn,
            ),
          RaisedButton(
            color: Colors.teal[400],
          child: Text('Sign Up', style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.white)),
          onPressed: navigateToSignUp,
          ),
          RaisedButton(
            color: Colors.teal[400],
          child: Text('Demo', style: Theme.of(context).textTheme.headline6.copyWith(color:Colors.white),),
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
    
    