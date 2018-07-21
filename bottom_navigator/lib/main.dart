import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        home: new HomePage(),
        theme: new ThemeData(
          primaryColor: Colors.black,
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RSHGRAM"),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          new NewPage("First"),
          new NewPage("Second"),
          new NewPage("Third"),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black45,
        child: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.security),
            ),
            new Tab(
              icon: new Icon(Icons.flight),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

// For SnackBar
/* 
class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new RaisedButton(
          child: new Text(
            "Daba",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.amberAccent,
          onPressed: () => Scaffold.of(context).showSnackBar(
                new SnackBar(
                  content: new Text("Button was pressed"),
                  duration: new Duration(seconds: 3),
                ),
              ),
        ),
      ),
    );
  }
}
*/

// For AlertDialog
/*
class MyBody extends StatelessWidget {
  AlertDialog alertDialog = new AlertDialog(
    content: new Text(
      "Dialog is Up!",
      style: new TextStyle(fontSize: 30.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new RaisedButton(
          child: new Text(
            "Daba",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.amberAccent,
          onPressed: () => showDialog(
                context: context,
                child: alertDialog,
              ),
        ),
      ),
    );
  }
}
*/

// Steps
/*
class MyBody extends StatelessWidget {
  int current_step = 0;
  List<Step> mysteps = [
    new Step(
      title: new Text("Step 1"),
      content: new Text("Some Content 1"),
      isActive: true,
    ),
    new Step(
      title: new Text("Step 2"),
      content: new Text("Some Content 2"),
      isActive: true,
    ),
    new Step(
      title: new Text("Step 3"),
      content: new Text("Some Content 3"),
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Stepper(
        steps: mysteps,
        currentStep: this.current_step,
        type: StepperType.vertical,
      ),
    );
  }
}
*/
