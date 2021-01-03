import 'package:flutter/material.dart';
import './pages/itemdetail.dart';

class Items extends StatelessWidget {
  final List<String> items;
  Items([this.items = const []]);

  Widget itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/flutter-logo.png"),
          Text(items[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ItemDetail(),
                  ),
                ),
                child: Text("Go to Detail"),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildItemList() {
    Widget card;
    if (items.length > 0) {
      card =
          ListView.builder(itemBuilder: itemBuilder, itemCount: items.length);
    } else {
      card = Center(
        child: Text("Item Not Found."),
      );
    }

    return card;
  }

  @override
  Widget build(BuildContext context) {
    return buildItemList();
  }
}
