import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Order History"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "Order History",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
