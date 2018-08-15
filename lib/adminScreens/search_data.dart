import 'package:flutter/material.dart';

class SearchData extends StatefulWidget {
  @override
  _SearchDataState createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Search Data"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text(
          "Search Data",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
