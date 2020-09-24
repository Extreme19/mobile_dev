import 'package:flutter/material.dart';
import 'package:pet_app/configuration.dart';
class DrawerScreen extends StatefulWidget{
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}
class _DrawerScreenState extends State<DrawerScreen>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top:50, left: 10),
     color: primarycolor,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Row(
           children: <Widget>[
             CircleAvatar(),
             SizedBox(width:12),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Joshua', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                 Text('Active Status', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ]
              )

            ],
          ),
          Expanded(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: drawerItems.map((e) => Row(
                  children: <Widget>[
                    Icon(e['icon'], size: 30,),
                    SizedBox(width:10),
                    Text(e['title'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                    

                ],
                )).toList()
              
            ),
          ),
       Row(
         children: <Widget>[
           IconButton(
             color: Colors.white,
             icon: Icon(Icons.settings), 
             onPressed: (){}
             ),
            Text('Settings', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(width:12),
            Container(
              height: 20,
              width: 2,
              color: Colors.white
            ),
            SizedBox(width:12),
            Text('Logout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

         ],
       )
       ]
     )
    );
  }
}