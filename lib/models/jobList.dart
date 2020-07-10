import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';

class JobList extends StatelessWidget {
  final List<Map<String,dynamic>> jobs = [
    {
    "title": "Plumber",
    "category": "Household"
    },
    {
    "title": "Electrician",
    "category": "Household"
    },
    {
    "title": "Makeup",
    "category": "Event"
    },
    {
    "title": "Catering",
    "category": "Event"
    },
    {
    "title": "Laundry",
    "category": "Domestic"
    },
    {
    "title": "Mechanic",
    "category": "On Demand"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(

      
    );
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
}