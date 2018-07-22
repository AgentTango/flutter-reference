import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
    ));

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("JSON APP"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
            future: DefaultAssetBundle
                .of(context)
                .loadString('load_json/person.json'),
            builder: (context, snapshot) {
              // Decode Json
              var mydata = JSON.decode(
                snapshot.data.toString(),
              );
              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new Text("Name : " + mydata[index]["name"]),
                        new Text("Age : " + mydata[index]["age"]),
                        new Text("Height : " + mydata[index]["height"]),
                        new Text("Hair Color : " + mydata[index]["hair_color"]),
                        new Text("Gender : " + mydata[index]["gender"]),
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
