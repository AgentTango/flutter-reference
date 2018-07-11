import 'package:flutter/material.dart';

class third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Third",
        ),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("This is Third Screen!"),
              new RaisedButton(
                child: new Text("Back"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new RaisedButton(
                child: new Text("Home"),
                onPressed: () {
                  // to remove the back arrow on the home screen
                  Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
