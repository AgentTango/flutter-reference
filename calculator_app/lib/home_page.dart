import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController t1 = new TextEditingController(text: "0");
  TextEditingController t2 = new TextEditingController(text: "0");

  var num1, num2, output = 0;

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      output = num1 ~/ num2;
    });
  }

  void clearData() {
    setState(() {
      num1 = 0;
      num2 = 0;
      output = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(40.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output : $output",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.indigo,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(bottom: 40.0),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 1",
                ),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 2",
                ),
                controller: t2,
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("+"),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      doAddition();
                    },
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20.0),
                  ),
                  new RaisedButton(
                    child: new Text("-"),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      doSubtraction();
                    },
                  ),
                ],
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    child: new Text("*"),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      doMultiplication();
                    },
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 20.0),
                  ),
                  new RaisedButton(
                    child: new Text("/"),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      doDivision();
                    },
                  ),
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(8.0),
              ),
              new RaisedButton(
                child: new Text(
                  "Clear"
                ),
                color: Colors.indigo,
                onPressed: () {
                  clearData();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
