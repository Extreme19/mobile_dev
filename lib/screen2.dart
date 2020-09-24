import 'package:flutter/material.dart';
import'configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          //creates a positioned object/Column which takes up all the space by default
          children: [Positioned.fill(
            child: Column(
              children: [
                //top part
                Expanded(child: Container(
                  color: Colors.blueGrey)
                  ),
                  // bottom part
                Expanded(child: Container(
                color: Colors.white)
                ),
              ],
              ),
        ),
        //to position the image
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.only(top:50),
            height: 300,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20)),
          child: Hero(
            tag:2,
            child: Image.asset('lib/images/cat1.jpg'))
          )

        ),
        //to align all widgets inside the stack
        Align( 
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios, 
                  color: Colors.white),
              ),
              IconButton(
                onPressed: (){
                  //Navigator.pop(context);
                },
                icon: Icon(
                  Icons.share, 
                  color: Colors.white),
              ),
              ]
            ),
          ),
        ),

        //a hover container to be aligned to center
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: ListShadow,
          ),)
        ),
        //bottom buttons
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
             child:Row(
             
               children: <Widget>[
                 //favourite
                 Container(
                   margin: EdgeInsets.symmetric(horizontal:20),
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                     color:primarycolor,
                     borderRadius: BorderRadius.circular(20),
                     boxShadow: ListShadow,
                   ),
                   child: Icon(Icons.favorite_border, color: Colors.white,),
                 ),

                 SizedBox(width: 20,),

                 //Adoption button
                 Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                     
                     height: 50,
                     width: 200,
                     decoration: BoxDecoration(
                       boxShadow: ListShadow,
                       color:primarycolor,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Center(child: Text('Adoption', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                     ),
                 )
               ],
             ),
            height: 120,
            decoration: BoxDecoration(color: Colors.grey[200],
              borderRadius : BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
            ),
            )
        ),


        
        ]
      ),
      
    );
  }
}
