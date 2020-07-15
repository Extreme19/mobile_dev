
import 'package:flutter/cupertino.dart';

class TransactionTicket{
  String ticketId;
  String providerId;
  String consumerId;
  Map<String,dynamic> details;
  DateTime startDate;
  DateTime endDate;

  TransactionTicket({
    @required this.consumerId, 
    this.details, 
    this.endDate, 
    @required this.providerId, 
    this.startDate, 
    @required this.ticketId});
}