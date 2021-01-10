import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Center(
                    child: Text("Modal Example"),
                  );
                });
          },
          color: Theme.of(context).primaryColor,
          textColor: Colors.white,
          child: Text("Modal"),
        ),
      ),
    );
  }
}
