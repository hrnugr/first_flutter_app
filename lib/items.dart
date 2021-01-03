import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final List<String> frameworks;
  Items([this.frameworks = const []]);

  Widget itemBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/flutter-logo.png"),
          Text(frameworks[index])
        ],
      ),
    );
  }

  Widget buildItemList() {
    Widget card;
    if (frameworks.length > 0) {
      card = ListView.builder(
          itemBuilder: itemBuilder, itemCount: frameworks.length);
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
