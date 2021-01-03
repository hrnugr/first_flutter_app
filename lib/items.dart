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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: itemBuilder, itemCount: frameworks.length);
  }
}
