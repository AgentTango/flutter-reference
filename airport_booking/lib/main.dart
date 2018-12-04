import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Airport";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: title,
      home: new AppBody(title: title),
    );
  }
}

class MyWidget extends StatelessWidget {
  String text;

  MyWidget({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Card(
              child: Text(text),
            ),
            Card(
              child: Text(text),
            ),
            Card(
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  String title;

  List<String> litems = ["1", "2", "Third", "4"];

  // Constructor
  AppBody({this.title});

  @override
  Widget build(BuildContext context) {
    bool _value = false;
    void _onChanged(bool value) => _value = value;

    return Scaffold(
      body: ListView.builder(
        itemCount: litems.length,
        itemBuilder: (BuildContext context, int index) {
          return new MyWidget(
            text: litems[index],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        tooltip: "Yeah, it does something",
        child: Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
      appBar: AppBar(
        title: Text(this.title),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        notchMargin: 2.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
