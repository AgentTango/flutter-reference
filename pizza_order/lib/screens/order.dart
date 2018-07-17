import 'package:flutter/material.dart';
import 'package:pizza_order/code/pizza.dart';
import 'package:pizza_order/screens/review.dart';

class Order extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Order> {
  pizza _pizzaorder = new pizza();

  void _setSize(String value) {
    setState(() {
      _pizzaorder.size = value;
    });
  }

  void _setTopping(int index, bool value) {
    setState(() {
      String key = _pizzaorder.toppings.keys.elementAt(index);
      _pizzaorder.toppings[key] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Order"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new DropdownButton<String>(
                value: _pizzaorder.size,
                items: pizza.sizes.map((String value) {
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_pizza),
                        new Text("Size : $value"),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value) {
                  _setSize(value);
                },
              ),
              new Expanded(
                child: new ListView.builder(
                  shrinkWrap: true,
                  itemCount: _pizzaorder.toppings.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title:
                          new Text(_pizzaorder.toppings.keys.elementAt(index)),
                      value: _pizzaorder.toppings.values.elementAt(index),
                      onChanged: (bool value) {
                        _setTopping(index, value);
                      },
                    );
                  },
                ),
              ),
              new RaisedButton(
                  child: new Text("Continue"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) => new Review(
                                order: _pizzaorder,
                              ),
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
