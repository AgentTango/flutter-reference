import 'package:flutter/material.dart';
import 'package:pizza_order/screens/order.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pizza Order App"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: new Drawer(
        child: new Container(
            padding: new EdgeInsets.all(32.0),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Text(
                    "Pizzaro",
                    style: new TextStyle(fontStyle: FontStyle.italic),
                  ),
                  new Text("Mario!"),
                ],
              ),
            )),
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Image.asset("images/pizza.png"),
              new RaisedButton(
                color: Colors.purpleAccent,
                splashColor: Colors.purple,
                onPressed: () {
                  Navigator.of(context).pushNamed("/Order");
                },
                textColor: Colors.white,
                child: new Text("Order!!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
