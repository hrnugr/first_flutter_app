import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item Detail"),
      ),
      body: //Center(child:
          Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/flutter-logo.png"),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text("Item Detail"),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text("Back"),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
      //),
    );
  }
}
