import 'package:flutter/material.dart';
import 'configuration.dart';
import 'screen2.dart';
import 'screen1.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  bool isdraweropen = false;


  @override
  Widget build(BuildContext context){
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdraweropen?20:0),
        color: Colors.white,
      ),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isdraweropen ?
                  IconButton(icon: Icon(Icons.cancel), 
                  onPressed: (){
                    setState(() {
                      xoffset = 0;
                      yoffset = 0;
                      scalefactor = 1;
                      isdraweropen = false;
                    });
                    })
                  :
                  IconButton(
                    onPressed: (){
                      setState(() {
                        
                          xoffset = 230;
                          yoffset = 150;
                          scalefactor = 0.6;
                          isdraweropen = true;
                        
                        
                      });
                      
                    }, 
                    icon: Icon(Icons.menu),
                    ),
                  Column(
                    children: <Widget>[
                      Text('Location'),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.location_on, 
                              color: primarycolor),
                            
                          ),
                          Text('Ukrain'),
                        ]
                      ),
                    ],
                  ),
                  CircleAvatar()
                ],
                

              ),
            ),
            //SEARCH BOX
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40.0, 40.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  focusedBorder: OutlineInputBorder( 
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(color: primarycolor)
                  ),
                  prefixIcon: Icon(Icons.search, color: primarycolor),
                  hintText: "Search Pet",
                  filled: true,
                  fillColor: Colors.grey[200]
                  ),
              ),
            ),

            //container for horizontal list of pets
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.toList().length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:12),
                          
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          
                            boxShadow:ListShadow)
                        ,child: Image.asset(categories[index]['iconPath'],height: 50,width: 50,
                        ),
                        ),
                        Text(categories[index]['name'])
                      ]
                    ),
                  );
                },
              ) ,
            ),

            //Container for first picture of pets
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen1()));
                Navigator.pushNamed(context,'lib/screen1.dart');
              },
                child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                    child: Stack(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        decoration : BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: ListShadow)
                      ),
                      Align(
                        child: Hero(
                          tag: 1,
                          child: Image.asset('lib/images/cat2.jpg'))
                      )
                    ],
                    )
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60, bottom:20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                      )
                    ))

                ],
                ),
              ),
            ),

            //////
            /////Container for Second picture of pets
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
                Navigator.pushNamed(context,'lib/screen2.dart');
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                    child: Stack(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        decoration : BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: ListShadow)
                      ),
                      Align(
                        child: Hero(
                          tag: 2,
                          child: Image.asset('lib/images/cat1.jpg', ))
                      )
                    ],
                    )
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60, bottom:20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                      )
                    ))

                ],
                ),
                ),
            )
        ],
        ),
      )
    );
  }
}