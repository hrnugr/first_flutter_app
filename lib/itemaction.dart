import 'package:flutter/material.dart';

class ItemAction extends StatelessWidget {
  final Function addItem;
  ItemAction(this.addItem);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addItem("Android");
      },
      child: Text("Add Picture"),
    );
  }
}
