import 'package:flutter/material.dart';

class BookAppointment extends StatefulWidget {
  @override
  _BookAppointmentState createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
         AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          title: Text('Book an appointment', style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
          content: Text('Are you willing to book this provider?'),
          actions: <Widget>[
            FlatButton(onPressed: ()=>Navigator.pop(context,'Cancelled'), child: Text('No')),
            FlatButton(onPressed: ()=>Navigator.pop(context,'Appointment booked, you\'ll be contacted soon'), child: Text('Yes'))
          ]
          ,
        )
      
    );
  }
  // Future<void> showAlertDialog()async{
  //   return showDialog(
  //     barrierDismissible: true,
  //     context: context, 
  //     builder: (context){
  //       return AlertDialog(
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
  //         title: Text('Book an appointment', style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
  //         content: Text('Are you willing to book this provider?'),
  //         actions: <Widget>[
  //           FlatButton(onPressed: ()=>Navigator.pop(context,'Cancelled'), child: Text('No')),
  //           FlatButton(onPressed: ()=>Navigator.pop(context,'Appointment booked, you\'ll be contacted soon'), child: Text('Yes'))
  //         ]
  //         ,
  //       );
  //     }
  //   );
  // }
}

 