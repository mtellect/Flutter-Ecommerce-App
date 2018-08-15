import 'package:flutter/material.dart';

class Privilages extends StatefulWidget {
  @override
  _PrivilagesState createState() => _PrivilagesState();
}

class _PrivilagesState extends State<Privilages> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Privilages"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "Privilages",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
