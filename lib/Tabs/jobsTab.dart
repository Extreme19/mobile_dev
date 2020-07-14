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
      // body: SafeArea(
      //   child: SearchBar<Widget>(
      //     searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
      //     headerPadding: EdgeInsets.symmetric(horizontal: 10),
      //     listPadding: EdgeInsets.symmetric(horizontal: 10),
      //     //onSearch: _getALlPosts,
      //     //searchBarController: _searchBarController,
      //     placeHolder: Text("placeholder"),
      //     cancellationWidget: Text("Cancel"),
      //     emptyWidget: Card(child: Center(child: Column(
      //       children: [
      //         //display when no searched category found
      //         Image.asset(
      //           'asset/notFound.png'
      //         ),
      //         Text("Can not find the Job category")
      //         ])
      //         )),
      //     //indexedScaledTileBuilder: (int index) => ScaledTile.count(1, index.isEven ? 2 : 1),
      //     header: Row(
      //       children: <Widget>[
      //         RaisedButton(
      //           child: Text("sort"),
      //           onPressed: () {
      //             // _searchBarController.sortList((Post a, Post b) {
      //             //   return a.body.compareTo(b.body);
      //             return null;
      //             }),
      //       ],
      //     ),
      //     //onSearch: 
          
          
      //     ),
          // onCancelled: () {
          //   print("Cancelled triggered");
          // },
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 10,
          // crossAxisCount: 2,
          // onItemFound: (Post post, int index) {
          //   return Container(
          //     color: Colors.lightBlue,
          //     child: ListTile(
          //       title: Text(post.title),
          //       isThreeLine: true,
          //       subtitle: Text(post.body),
          //       onTap: () {
          //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
          //       },
          //     ),
          //   ),      
      //),  
    );      
  }
}