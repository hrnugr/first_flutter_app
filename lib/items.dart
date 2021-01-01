import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  List<String> frameworks;
  Items(this.frameworks);

  @override
  Widget build(BuildContext context) {
    return Column(
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
