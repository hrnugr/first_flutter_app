import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreatePage();
  }
}

class _CreatePage extends State<StatefulWidget> {
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Scaffold(
        body: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "title"),
              onChanged: (String value) {
                title = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "description"),
              onChanged: (String value) {
                description = value;
              },
            ),
            RaisedButton(
              child: Text("Create"),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, "/home");
              },
            ),
          ],
        ),
      ),
    );
  }
}
