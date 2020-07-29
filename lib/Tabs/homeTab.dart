import 'package:flutter/material.dart';
 import 'package:carousel_pro/carousel_pro.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  @override
  Widget build(BuildContext context) {
    bool hasImage1 = true;
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/c2.jpg'),
          AssetImage('assets/images/c3.jpg'),
          AssetImage('assets/images/c4.jpg'),
          AssetImage('assets/images/c5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 2),
      ),
    );
    //list of jobs on the home tab
    return Scaffold(
        body: ListView(
          children: [
            image_carousel,
            ///////
            ///
            Card(
            borderOnForeground: true,
            child: Column(
              children: [
                //Service status (completed or pending)
                Row(
                  
                  children: <Widget>[
                    Column(
                      children:[
                        Text('Service Category:',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('Completion Status:',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black,fontSize: 15.0,fontWeight: FontWeight.bold),),
                        )
                      ]
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(right:6.0),
                          child: Text('Plumbing',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black,fontSize: 15.0),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:3),
                          child: Text('Completed',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black,fontSize: 15.0),),
                        )
                      ]
                    )
                  ],
                ),
                Divider(),
                //Requested Service 
                Row(
                  children: [
                    //Image space and upload image button
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Stack(
                          //fit: StackFit.passthrough,
                          children: <Widget>[
                            //Image
                            SizedBox(
                              width: 150,
                              height: 150,
                              //uploaded picture or avatar if no pic uploaded from device
                              child: hasImage1? Image.asset('assets/images/c1.jpg'): Icon(Icons.insert_photo,size: 100,),
                            ),
                                                        
                          ],
                      )
                      ]
                    ),
                    SizedBox(width:20),
                    //service description and location
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Text('Description: Lorem ipsum dolor...',
                        softWrap: true,
                        overflow: TextOverflow.fade,),
                        SizedBox(height: 8,),
                        Text('Location: 312 Herbert Macaulay..'),
                        //Upload Picture
                        Padding(
                          padding: const EdgeInsets.only(right:38.0),
                          child: Row(
                            children: <Widget>[
                              Text('Upload picture',
                              style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.teal,fontSize: 15.0),),
                              IconButton(
                                icon: Icon(Icons.add_photo_alternate),
                                      onPressed: (){
                                        //upload image method

                                        //set state of uploaded image
                                        setState(() {
                                          hasImage1=true;
                                        });
                                      }, 
                                      ),
                            ],
                          ),
                        ),
                            
                      ],
                      
                    )
                  ]
                ),
                Divider(),
                //Rate/Review and verify service provided
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Rate
                    FlatButton(onPressed: (){}, child: Text('Book this Service', style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.teal,fontSize: 15.0),), ),
                    //Review
                    FlatButton(onPressed: (){}, child: Text('View Portfolio',style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.teal,fontSize: 15.0),))
                  ],
                ),
                
                //Open dispute (inactive if status not completed)
                // Row(
                //   children: <Widget>[
                //     Expanded(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.stretch,
                //         children: <Widget>[
                //           MaterialButton(
                //             enableFeedback: true,
                //             splashColor: Colors.yellow[50],
                //             onPressed: (){}, child: Text('Open dispute',
                //           style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white,fontSize: 15.0),
                //           ), color: Colors.teal[400],disabledColor: Colors.grey,)
                //         ],
                //       ),
                //     ),
                //   ],
                // ), 
              ]
            ),
          ),
            ///

          ]
        ),
      );
  }
}