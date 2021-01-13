import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  final Function addItem;
  CreatePage(this.addItem);
  @override
  State<StatefulWidget> createState() {
    return _CreatePage();
  }
}

class _CreatePage extends State<CreatePage> {
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
                final Map<String, dynamic> item = {
                  'title': title,
                  'description': description,
                  "img": "assets/flutter-logo.png"
                };
                widget.addItem(item);
                Navigator.pushNamed(context, "/home");
              },
            ),
          ],
        ),
      ),
    );
  }
}
