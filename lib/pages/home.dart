import 'package:flutter/material.dart';
import '../items.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items;
  HomePage(this.items);

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
                Navigator.pushReplacementNamed(context, "/settings"),
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: Items(items),
    );
  }
}
