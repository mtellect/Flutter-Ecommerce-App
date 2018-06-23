import 'package:flutter/material.dart';

class GirliesLogin extends StatefulWidget {
  @override
  _GirliesLoginState createState() => _GirliesLoginState();
}

class _GirliesLoginState extends State<GirliesLogin> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Login",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
