import 'package:flutter/material.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Products"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "Add Products",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
