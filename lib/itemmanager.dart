import 'package:flutter/material.dart';
import 'items.dart';
import 'itemaction.dart';

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

  void addItem(String item) {
    setState(() => frameworks.add(item));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: ItemAction(addItem),
        ),
        Items(frameworks),
      ],
    );
  }
}
