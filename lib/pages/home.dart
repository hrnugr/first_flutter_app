import 'package:flutter/material.dart';
import '../itemmanager.dart';
//import '../pages/settings.dart';

class HomePage extends StatelessWidget {
  final Function addItem;
  final Function deleteItem;
  final List<Map<String, String>> items;
  HomePage(this.items, this.addItem, this.deleteItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              title: Text("Choose"),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () => {
                Navigator.pushReplacementNamed(context, "/settings"
                    // MaterialPageRoute(
                    //   builder: (BuildContext context) => Settings(),
                    //),
                    ),
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ItemManager(this.items, this.addItem, this.deleteItem),
    );
  }
}
