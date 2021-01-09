import 'package:flutter/material.dart';
import 'package:my_app/pages/home.dart';

import './edit.dart';
import './delete.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Edit",
                icon: Icon(Icons.create),
              ),
              Tab(
                text: "Delete",
                icon: Icon(Icons.delete),
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          EditPage(),
          DeletePage(),
        ]),
      ),
    );
  }
}
