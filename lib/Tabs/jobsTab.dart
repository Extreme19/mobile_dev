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
    return Scaffold(
      appBar: AppBar(
        actions:[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              showSearch(context: context, delegate: JobListSearch());
            },
          )
        ]
      ),
       
    );      
  }
}