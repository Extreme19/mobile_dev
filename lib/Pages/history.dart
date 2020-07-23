import 'package:flutter/material.dart';
class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recent Transactions',
        style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        //backgroundColor: Colors.teal[900],
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey[100],
      //this is a place holder
      body: ListView(
        physics: ScrollPhysics(),
        children:[
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          Card(
              child: ListTile(
              leading: Icon(Icons.history),
              title: Text('Completed transactions'),
              subtitle: Text('Date and time of transaction ${DateTime.now().toString().substring(0,16)}'),
            ),
          ),
          ]
      ),
    );
  }
}
