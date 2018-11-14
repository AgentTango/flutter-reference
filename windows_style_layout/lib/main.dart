import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            title: new Text("Categories"),
          ),
          body: new StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) => new Container(
                  color: Colors.blue,
                  child: new Image.asset(
                    'images/business.jpg',
                    fit: BoxFit.fill,
                    colorBlendMode: BlendMode.colorDodge,
                  ),
                ),
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 1),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ));
    }

    return new MaterialApp(
      home: home(),
    );
  }
}
