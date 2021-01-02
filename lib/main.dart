import 'package:flutter/material.dart';
import 'itemmanager.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends State<App> {
  String item = "Flutter";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: ItemManager(item: item),
      ),
    );
  }
}
