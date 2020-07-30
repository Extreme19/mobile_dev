import 'package:Orsul_v1/models/jobListSearch.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';


class JobsTab extends StatefulWidget {
  @override
  _JobsTabState createState() => _JobsTabState();
}

class _JobsTabState extends State<JobsTab> {
  //SearchBarController _searchBarController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: Scaffold(
        
        appBar: AppBar(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
          bottomOpacity: 0.5,
          elevation: 0,
          leading: Icon(Icons.arrow_left),
          title: Text('Search Jobs', textAlign: TextAlign.end),
          actions:[
            IconButton(
              tooltip: 'Search Jobs...',
              icon: Icon(Icons.search),
              onPressed: (){
                showSearch(context: context, delegate: JobListSearch());
              },
            ),
            IconButton(
              //tooltip: 'Search Jobs...',
              icon: Icon(Icons.location_on),
              onPressed: (){
                //TODO: create a google map option 
                showSearch(context: context, delegate: null);
              },
            )
          ]
        ),
         
      ),
    );      
  }
}