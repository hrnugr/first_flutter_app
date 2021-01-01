import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text("Add Picture"),
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/flutter-logo.png"),
                  Text("Do Flutter Application")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
