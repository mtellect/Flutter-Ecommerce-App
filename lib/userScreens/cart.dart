import 'package:flutter/material.dart';

class GirliesCart extends StatefulWidget {
  @override
  _GirliesCartState createState() => _GirliesCartState();
}

class _GirliesCartState extends State<GirliesCart> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cart"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Cart",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
