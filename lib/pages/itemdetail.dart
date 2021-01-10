import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final Map<String, String> item;
  ItemDetail(this.item);

  void deleteItemAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Are you sure ?"),
          content: Text("If you delete it, it will not be recycled."),
          actions: [
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
                child: Text("Continue"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Item Detail"),
        ),
        body: //Center(child:
            Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item["img"]),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(item["title"]),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: RaisedButton(
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  child: Text("Delete Item"),
                  // onPressed: () => Navigator.pop(context, true),
                  onPressed: () {
                    deleteItemAlert(context);
                  }),
            ),
          ],
        ),
        //),
      ),
    );
  }
}
