import 'package:flutter/material.dart';

class GirliesAboutUs extends StatefulWidget {
  @override
  _GirliesAboutUsState createState() => _GirliesAboutUsState();
}

class _GirliesAboutUsState extends State<GirliesAboutUs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "About Girlies",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
