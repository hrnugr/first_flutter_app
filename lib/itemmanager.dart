import 'package:flutter/material.dart';
import 'items.dart';

class ItemManager extends StatefulWidget {
  String item;
  ItemManager({this.item = 'Default'});
  @override
  State<StatefulWidget> createState() {
    return _ItemManager();
  }
}

class _ItemManager extends State<ItemManager> {
  List<String> frameworks = [];

  @override
  void initState() {
    super.initState();
    frameworks.add(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
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
