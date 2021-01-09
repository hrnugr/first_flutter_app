import 'package:flutter/material.dart';
import '../itemmanager.dart';

class HomePage extends StatelessWidget {
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
              title: Text("Choice 1"),
              onTap: () => {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ItemManager(),
    );
  }
}
