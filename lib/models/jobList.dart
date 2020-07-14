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
  
  
  

//   Widget searchJob(keyword){
//     return SearchWidget<Map<String, dynamic>>(
//    dataList: jobs,
//    hideSearchBoxWhenItemSelected: false,
//    listContainerHeight: MediaQuery.of(keyword).size.height / 4,
//    queryBuilder: (String keyword, List<Map<String, dynamic>> jobList) {
//      return jobList.where((jobList) => jobs[.toLowerCase().contains(query.toLowerCase())).toList();
//    },
//    popupListItemBuilder: (LeaderBoard item) {
//      return PopupListItemWidget(item);
//    },
//    selectedItemBuilder: (LeaderBoard selectedItem, VoidCallback deleteSelectedItem) {
//      return SelectedItemWidget(selectedItem, deleteSelectedItem);
//    },
//    // widget customization
//    noItemsFoundWidget: NoItemsFound(),
//    textFieldBuilder: (TextEditingController controller, FocusNode focusNode) {
//      return MyTextField(controller, focusNode);
//    },
//  );
  // }
