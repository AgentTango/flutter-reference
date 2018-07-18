import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Animated Login",
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _logoAnimationController;
  Animation<double> _logoAnimation;

  @override
  void initState() {
    super.initState();
    _logoAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    _logoAnimation = new CurvedAnimation(
      parent: _logoAnimationController,
      curve: Curves.bounceOut,
    );
    _logoAnimation.addListener(() => this.setState(() {}));
    _logoAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Animated Login"),
        ),
        backgroundColor: Colors.black,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/team.jpg"),
              fit: BoxFit.cover,
              // This is for Opacity, or overlay over the image
              color: Colors.black87,
              // Exactly like what darken was in the tutorial
              colorBlendMode: BlendMode.hue,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlutterLogo(
                  size: _logoAnimation.value * 100,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                                labelText: "Enter Email",
                                hintText: "someone@something.com"),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              hintText: "************",
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(top: 20.0),
                          ),
                          new MaterialButton(
                            color: Colors.blueGrey,
                            splashColor: Colors.lightBlue,
                            child: new Container(
                              padding: new EdgeInsets.only(right: 100.0, left: 100.0),
                              child: new Row(
                                
                                children: <Widget>[
                                  new Icon(Icons.home),
                                  new Text("Login"),
                                ],
                              ),
                            ),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
