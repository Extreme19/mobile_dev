import 'package:flutter/material.dart';

class MessageTab extends StatefulWidget {
  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
              body: Center(
                child: Card(
                  borderOnForeground: true,
                  child: Padding(
                padding: const EdgeInsets.all(120.0),
                  child: Text('No Messages '),
                 )
                ),
              ),
              floatingActionButton: IconButton(icon: Icon(Icons.chat_bubble, size: 50,color:Colors.teal[300]), onPressed: (){},),
           )
    );
  }
}