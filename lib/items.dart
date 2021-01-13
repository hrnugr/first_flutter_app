import 'package:flutter/material.dart';
import 'pages/detail.dart';

class Items extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  Items(this.items);

  Widget itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(items[index]["img"]),
          Text(items[index]["title"]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                // onPressed: () => Navigator.pushNamed<bool>(
                onPressed: () => Navigator.push(
                  context, //"/item/" + index.toString()
                  MaterialPageRoute<bool>(
                    builder: (BuildContext context) => ItemDetail(items[index]),
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
