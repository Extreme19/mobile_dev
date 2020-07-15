
import 'package:Orsul_v1/models/jobList.dart';
import 'package:flutter/material.dart';


//search delegate class for listing jobs.
class JobListSearch extends SearchDelegate<JobList>{

  //trailing button
  @override
  List<Widget> buildActions(BuildContext context) {
      
      return [IconButton(
        icon: Icon(Icons.cancel), 
        onPressed: (){
          query = "";
        })];
    }
  
    //left hand side leading button
    @override
    Widget buildLeading(BuildContext context) {
      
      return IconButton(
        icon: Icon(Icons.arrow_back_ios), 
        onPressed: (){
          close(context, null);
        });
    }

    //search term not found response
    @override
    Widget buildResults(BuildContext context) {
      // TODO: implement buildResults
      
      return Center(child: Text(query));
    }
  
    //search term suggestions
    @override
    Widget buildSuggestions(BuildContext context) {
    

    //realtime search functions
    final myJobs = query.isEmpty
    ? listJobs() //if nothing is typed, display all the available jobs..
    : listJobs().where((element) => element.title.contains(query)).toList(); //else display the relevant results.
    return myJobs.isEmpty
    ? Text("Oops the service you searched for is currently unavailable...")//when search query is not found
    : ListView.builder(
      itemCount: myJobs.length,
      //runs a forloop over all the items in a list
      itemBuilder: (context, index){
        //a single job list item
        final JobList jobListItem = myJobs[index];
        return ListTile(
          onTap: (){
            showResults(context);//navigates to the build Result function.
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(jobListItem.title, style: TextStyle(fontSize: 18,),),
              Text(jobListItem.category, style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic, fontSize: 13),),
              Divider(height: 3.0),
            ],
          ),
         
         );
      });
  }
  
}