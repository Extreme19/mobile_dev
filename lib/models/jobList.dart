import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';

class JobList {
  final String title;
  final String category;
//constructor for the Joblist class
  JobList({this.title, this.category});
}
//a method to store the hardcoded list of jobs
  List<JobList> listJobs(){
     var jobList = <JobList>[
    JobList(
    title: "Plumber",
    category: "Household"
    ),
    JobList(
    title: "Electrician",
    category: "Household"
    ),
    JobList(
    title: "Makeup",
    category: "Event"
    ),
    JobList(
    title: "Catering",
    category: "Event"
    ),
    JobList(
    title: "Laundry",
    category: "Domestic"
    ),
    JobList(
    title: "Mechanic",
    category: "On Demand"
    ),
  ];
  return jobList;
  }
  
  
