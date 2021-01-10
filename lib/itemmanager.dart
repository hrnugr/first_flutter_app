import 'package:flutter/material.dart';
import 'items.dart';
import 'itemaction.dart';

class ItemManager extends StatelessWidget {
  final List<Map<String, String>> items;
  final Function addItem;
  final Function deleteItem;
  ItemManager(this.items, this.addItem, this.deleteItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: ItemAction(addItem),
        ),
        Expanded(
          child: Items(items, deleteItem: deleteItem),
        ),
      ],
    );
  }
}
