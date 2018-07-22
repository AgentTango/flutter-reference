import 'package:flutter/material.dart';
import 'package:chatapp/chat_screen.dart';
import 'package:chatapp/chat_message.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("rshchat"),
      ),
      body: new ChatScreen(),
    );
  }
}
