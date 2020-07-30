import 'package:flutter/material.dart';

class WalletTab extends StatefulWidget {
  WalletTab({Key key}) : super(key: key);

  @override
  _WalletTabState createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(physics: ScrollPhysics(), children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        height: 150,
        decoration: BoxDecoration(
            color: Colors.teal[300],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Card(
          child: Center(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('3456 4567 2567 5674'),
              subtitle: Text('Kolawole Caleb'),
            ),
          ),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.history),
          title: Text('Transaction 1'),
          subtitle: Text('Transferred 20,000 to Bolaji '),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.history),
          title: Text('Transaction 2'),
          subtitle: Text('Recieved 15,500 in wallet '),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.history),
          title: Text('Transaction 3'),
          subtitle: Text('Added 10,000 into wallet'),
        ),
      ),
      // Card(
      //   child: ListTile(
      //     leading: Icon(Icons.history),
      //     title: Text('Transaction 4'),
      //     subtitle: Text('Recieved 12,300 in wallet'),
      //   ),
      // ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            width: 110.0,
            height: 110.0,
            color: Colors.white,
            child: FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text('Wallet'),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            width: 110.0,
            height: 110.0,
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15.0),
            width: 110.0,
            height: 110.0,
            color: Colors.white,
            child: FlatButton.icon(
              icon: Icon(Icons.compare_arrows),
              label: Text('Transfer'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ]);
  }
}
