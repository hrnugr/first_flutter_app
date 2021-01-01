import 'package:flutter/material.dart';
import 'items.dart';

class ItemManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return __ItemManager();
  }
}

class __ItemManager extends State<ItemManager> {
  List<String> frameworks = ["Flutter"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: () {
              setState(() => frameworks.add("Android"));
            },
            child: Text("Add Picture"),
          ),
        ),
        Items(frameworks),
      ],
    );
  }
}
