import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: contact()
  ));
}


class contact extends StatelessWidget {
  const contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          
          Container(
            child: Image.asset('lib/images/contact.jpg', fit: BoxFit.contain,
            height: 200,
            width: 160,)),
          SizedBox(height: 8.0),
          Text('If you need help\n feel free to contact me', 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[800])
            ),
            SizedBox(height:8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    boxShadow:[BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                    )]
                  ),
                  child: Column(children: <Widget>[
                    //Image.asset('lib/images/email_icon.png',fit: BoxFit.fill),
                    Icon(Icons.alternate_email, color: Colors.orange,size: 50.0,),
                    Text('Write to me:\n joshade96@gmail.com', style: TextStyle(color: Colors.grey[800]), textAlign: TextAlign.center),
                  ],
                  ) ,
                  height:100,
                  width:150
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    boxShadow:[BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                    )]
                  ),
                  child: Column(children: <Widget>[
                    //Image.asset('lib/images/faq_icon.png',fit: BoxFit.contain)
                    Icon(Icons.help_outline, color: Colors.orange,size: 50.0,),
                    Text('FAQs:\n Frequently Asked Questions', style: TextStyle(color: Colors.grey[800]),textAlign: TextAlign.center),
                  ],
                  ),
                  height:100,
                  width:150
                ),
              ),
              SizedBox(height: 8.0),

              
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(                   
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    boxShadow:[BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                    )]
                  ),
                  child: Column(children: <Widget>[
                    //Image.asset('lib/images/phone_icon.jpg')
                    Icon(Icons.call, color: Colors.orange,size: 50.0,),
                    Text('Phone Number:\n +2348142235205', style: TextStyle(color: Colors.grey[800]),textAlign: TextAlign.center),
                  ],
                  ),
                
                  height:100,
                  width:150
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    boxShadow:[BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 20,
                    )]
                  ),
                  child: Column(children: <Widget>[
                    //Image.asset('lib/images/home_icon.jpg', fit: BoxFit.contain,)
                    Icon(Icons.business, color: Colors.orange,size: 50.0,),
                    Text('Address:\n 82 Glover st. Lagos', style: TextStyle(color: Colors.grey[800]),textAlign: TextAlign.center),
                  ],
                  ),
                  
                  height:100,
                  width:150
                ),
              )
            ]
          ),
          Text('Copyright. 2020 Joshiverse', style: TextStyle(
            color: Colors.orange
          ),),
          Text('All rights reserved', style: TextStyle(
            color: Colors.orange)),
        ],
        
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Contact Josh', 
        
        style: TextStyle(color: Colors.orange)),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      
    );
  }
}

