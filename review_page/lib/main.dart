import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget home() {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("Review Page"),
        ),
        body: new ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("AB"),
                  ),
                  title: Text('Akshit Banta'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Some Google User"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("PJ"),
                  ),
                  title: Text('Pratik Jain'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Ateek Ujjwal"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    child: Text("R"),
                  ),
                  title: Text('Rishi Banerjee'),
                  subtitle: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  trailing: Icon(Icons.thumb_up),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 54.0),
                  child: ListTile(
                    title: Text("Apoorv Jain"),
                    subtitle: Text("This is the Reply"),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return new MaterialApp(
      home: home(),
    );
  }
}
