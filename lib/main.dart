import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Expense Tracker'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.orange,
              child: Container(
                width: double.infinity,
                child: Text('Chart'),
              ),
              elevation: 5,
            ),
            Card(
              child: Text('List of TX'),
            )
          ],
        ),
      ),
    );
  }
}
