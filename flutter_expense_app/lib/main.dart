import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'battery',
      amount: 8000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'milk',
      amount: 3000,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8D99AE),
          title: Text('flutter app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Container(
                color: Color(0xFF8D99AE),
                width: double.infinity,
                child: Text('chart'),
              ),
            ),
            Card(
              elevation: 3,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                  ],
                ),
              ),
            ),
            Column(
                children: transactions
                    .map((tx) => Card(
                          elevation: 3,
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF8D99AE),
                                  border: Border.all(
                                      width: 2,
                                      color: Color(
                                        0xFF2B2D42,
                                      )),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  '₩${tx.amount}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    tx.title,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    DateFormat('yMMMMd').format(tx.date),
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF8D99AE),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
