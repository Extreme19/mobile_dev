import 'package:flutter/material.dart';

 
 class WalletTab extends StatefulWidget {
  WalletTab({Key key}) : super(key: key);

  @override
  _WalletTabState createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Wallet')
    );
  }
}