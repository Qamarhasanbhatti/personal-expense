import 'dart:ffi';

import '../models/transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

import './new_transaction.dart';
class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _usertransactions = [
    Transaction(id: "hi", title: "title", amount: 68.99, date: DateTime.now()),
    Transaction(id: "hi", title: "title", amount: 68.99, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle,double txAmount){
    final newTx=Transaction(id: DateTime.now().toString(), title: txTitle, amount:txAmount, date: DateTime.now());
    setState(() {
      _usertransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_usertransactions),
      ],
    );
  }
}
