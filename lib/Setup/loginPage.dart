import 'package:Orsul_v1/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
} 

class _LoginPageState extends State<LoginPage> {
String _email;
String _password;
final GlobalKey<FormState> _formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orsul SignIn'),
        
      ),
      body: Form(
        key: _formKey,
        
        child: Column(
          children: <Widget>[
            //Implement form fields
          TextFormField(
            validator: (input){
              if(input.isEmpty){
                return 'please enter your email';
              }
              return null;
            },
            onSaved: (input)=> _email = input,
            decoration: InputDecoration(
              labelText: 'Email',
              helperText: 'example@email.com'
            ),
          ),
          TextFormField(
            validator: (input){
              if(input.length < 6){
                return 'please enter your correct password';
              }
              return null;
            },
            onSaved: (input)=> _password = input,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          RaisedButton(
            onPressed: signIn,
            child: Text('Sign In'),
            )
          ]
        ), 
        ), 
    );
  }
  Future<void> signIn() async{
    //valdate fields
    final formState = _formKey.currentState;
    if(formState.validate()){
      //to save the form values.
      formState.save();
      try {
        //login to firebase
        AuthResult user =  await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user:user.user)));
      
      } catch (e) {
        print(e.message);
      }
    }    
  }
}
