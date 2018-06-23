import 'package:flutter/material.dart';

class GirliesMessages extends StatefulWidget {
  @override
  _GirliesMessagesState createState() => _GirliesMessagesState();
}

class _GirliesMessagesState extends State<GirliesMessages> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Messages"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Messages",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
