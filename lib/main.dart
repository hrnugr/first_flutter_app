import 'package:flutter/material.dart';

void main() {
  runApp(LogoApp());
}

class LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoApp();
  }
}

class _LogoApp extends State<LogoApp> {
  List<String> frameworks = ["Flutter"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() => frameworks.add("Android"));
                },
                child: Text("Add Picture"),
              ),
            ),
            Column(
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
            ),
          ],
        ),
      ),
    );
  }
}
