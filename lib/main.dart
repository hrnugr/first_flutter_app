import 'package:flutter/material.dart';
import 'package:my_app/pages/auth.dart';
import 'package:my_app/pages/settings.dart';
import 'package:my_app/pages/home.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.light),
      home: Auth(),
      routes: {
        "/home": (BuildContext context) => HomePage(),
        "/settings": (BuildContext context) => Settings()
      },
    );
  }
}
