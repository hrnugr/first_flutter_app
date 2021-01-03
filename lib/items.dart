import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  List<String> frameworks;
  Items([this.frameworks = const []]);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: frameworks
          .map((item) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/flutter-logo.png"),
                    Text(item)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
