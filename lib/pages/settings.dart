import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Settings Page"),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () => {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                )
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Item List"),
      ),
      body: Container(),
    );
  }
}
