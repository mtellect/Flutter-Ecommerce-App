import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'profile.dart';
import 'delivery.dart';
import 'aboutUs.dart';
import 'loginLogout.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Girlies"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        new GirliesFavorities()));
              }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new CupertinoPageRoute(
                        builder: (BuildContext context) =>
                            new GirliesMessages()));
                  }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text(
                  "0",
                  style: new TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              )
            ],
          )
        ],
      ),
      body: new Center(
        child: new Text(
          "My HomePage Store",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context) => new GirliesCart()));
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text(
              "0",
              style: new TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Maugost Mtellect"),
              accountEmail: new Text("ammaugost@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order Notifications"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        new GirliesNotifications()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order History"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new GirliesHistory()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Profile Settings"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new GirliesProfile()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Delivery Address"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new GirliesDelivery()));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("About Us"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new GirliesAboutUs()));
              },
              //
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Login"),
              onTap: () {
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) => new GirliesLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
