import 'package:flutter/material.dart';

class GirliesFavorities extends StatefulWidget {
  @override
  _GirliesFavoritiesState createState() => _GirliesFavoritiesState();
}

class _GirliesFavoritiesState extends State<GirliesFavorities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favorites"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "My Favorites",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
