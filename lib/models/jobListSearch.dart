
//import 'dart:js';



//import 'package:Orsul_v1/models/bookAppointment.dart';
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
      
      return query=='plumber'?  plumbers() :Center(child: Text(query));
    }
  
    //search term suggestions
    @override
    Widget buildSuggestions(BuildContext context) {
    

    //realtime search functions
    final myJobs = query.isEmpty
    ? listJobs() //if nothing is typed, display all the available jobs..
    : listJobs().where((element) => element.title.toLowerCase().contains(query.toLowerCase())).toList(); //else display the relevant results.
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
  Widget plumbers(){
    return ListView
    (children:[
        plumber("James Joshua", "945", "73"),
        plumber("Musa Chima", "989", "41"),
        plumber("Femi Abdul", "923", "17"),
        plumber("Obong Felix", "998", "12"),
        plumber("Joyce Philips", "890", "20")
    ]
    );
  }
  
  Widget plumber(String name, String points, String completedJobs){
    
    return Column(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //picture or avatar and name
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      //child: Image.asset(''),
                      child: Icon(Icons.person_outline),
                      radius: 30.0,
                    ),
                    SizedBox(height:10),
                    Text(name)
                  ],
                ),
                SizedBox(width: 30,),
                //Points, star rating, completed jobs
                Column(
                  children: <Widget>[
                    //points
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,22,35.0,0),
                      child: Text('Points: $points'),
                    ),
                    SizedBox(height:5.0),
                    //star rating
                    Row(
                      children: <Widget>[
                        Text("       Rating: "),
                        Icon(Icons.star, size: 15,),
                        Icon(Icons.star, size: 15,),
                        Icon(Icons.star, size: 15,),
                        Icon(Icons.star, size: 15,),
                        Icon(Icons.star_half, size: 15,),
                      ],
                    ),
                    //completed jobs
                    Text('   completedJobs: $completedJobs'),
                    SizedBox(height:0),
                    //book an appointment
                    FlatButton(child: Text("Book Appointment"), 
                    
                    onPressed: (){
                      return Column(
                        children: <Widget>[
                          Text('appointment booked'),
                        ],
                      );
                    },
                     textColor: Colors.blueAccent[100],)
                  ],
                )
              ]
            ),
          ),
        ),
      ],
    );
  }
}