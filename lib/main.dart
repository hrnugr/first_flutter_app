import 'package:flutter/material.dart';
import 'package:my_app/pages/auth.dart';
import 'package:my_app/pages/settings.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/itemdetail.dart';

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
  final List<Map<String, String>> items = [];

  void addItem(Map<String, String> item) {
    setState(() => items.add(item));
  }

  void deleteItem(Map<String, String> item) {
    setState(() => items.remove(item));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.light),
      home: Auth(),
      routes: {
        "/home": (BuildContext context) => HomePage(items, addItem, deleteItem),
        "/settings": (BuildContext context) => Settings()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElementList = settings.name.split("/");
        final int index = int.parse(pathElementList[2]);

        if (pathElementList[0] == "") {
          return null;
        }

        if (pathElementList[1] == "item") {
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ItemDetail(items[index]),
          );
        }

        return null;
      },
    );
  }
}
