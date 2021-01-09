import 'package:flutter/material.dart';
import 'items.dart';
import 'itemaction.dart';

class ItemManager extends StatefulWidget {
  final Map<String, String> frameworks;
  ItemManager({this.frameworks});
  @override
  State<StatefulWidget> createState() {
    return _ItemManager();
  }
}

class _ItemManager extends State<ItemManager> {
  List<Map<String, String>> frameworks = [];

  @override
  void initState() {
    super.initState();
  }

  void addItem(Map<String, String> item) {
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
        Expanded(
          child: Items(frameworks),
        ),
      ],
    );
  }
}
