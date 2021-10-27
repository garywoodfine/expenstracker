import '../models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
  ];

  void _addNewTransaction(String title, double amount){
    final newTx = Transaction (title: title, amount: amount, date: DateTime.now(), id: DateTime.now().toString() );

    setState(() {
      _transactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_transactions),
    ]
    );
  }
}
