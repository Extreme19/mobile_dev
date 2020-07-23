import 'package:Orsul_v1/Setup/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage  extends StatefulWidget{

  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage>{
String _email;
String _password;
final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Orsul Sign Up'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          
          child: Column(
            children: <Widget>[
              //Implement form fields
            TextFormField(
              validator: (input){
                if(input.isEmpty){
                  return 'please enter a valid email';
                }
                return null;
              },
              onSaved: (input)=> _email = input,
              decoration: InputDecoration(
                labelText: 'Email',
                
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              validator: (input){
                if(input.length < 6){
                  return 'please create a longer password';
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
              onPressed: signUp,
              child: Text('Sign Up'),
              )
            ]
          ), 
          ),
      ), 
    
    );
  }
Future<void> signUp() async{
    //valdate fields
    final formState = _formKey.currentState;
    if(formState.validate()){
      //to save the form values.
      formState.save();
      try {
        //create a new user to firebase with email and password, 
        //user is an authentication result which returns a (user) and other properties
        AuthResult user =  await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: _email, password: _password);
        //notify the user of the registration success
        user.user.sendEmailVerification();
        //then takes user to login page
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      
      } catch (e) {
        print(e.message);
      }
    }    
  }

}