import 'package:flutter/material.dart';
import 'package:my_app/pages/auth.dart';
import 'package:my_app/pages/settings.dart';
import 'package:my_app/pages/home.dart';
import './pages/detail.dart';

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
  final List<Map<String, dynamic>> items = [];

  void addItem(Map<String, dynamic> item) {
    setState(() => items.add(item));
  }

  void deleteItem(Map<String, dynamic> item) {
    setState(() => items.remove(item));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.purple, brightness: Brightness.light),
      home: Auth(),
      routes: {
        "/home": (BuildContext context) => HomePage(items),
        "/settings": (BuildContext context) => Settings(addItem)
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElementList = settings.name.split("/");
        final int index = int.parse(pathElementList[2]);

        if (pathElementList[0] == "") {
          return null;
        }

        if (pathElementList[1] == "car") {
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ItemDetail(items[index]),
          );
        }

        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage(items),
            settings: settings);
      },
    );
  }
}
