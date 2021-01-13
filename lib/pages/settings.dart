import 'package:flutter/material.dart';
import 'package:my_app/pages/create.dart';
//import 'package:my_app/pages/home.dart';

import './edit.dart';
import './delete.dart';

class Settings extends StatelessWidget {
  final Function addItem;
  Settings(this.addItem);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                  Navigator.pushReplacementNamed(context, "/home"
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => HomePage(),
                      //   ),
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
                text: "Create",
                icon: Icon(Icons.create),
              ),
              Tab(
                text: "Edit",
                icon: Icon(Icons.edit),
              ),
              Tab(
                text: "Delete",
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CreatePage(addItem),
          EditPage(),
          DeletePage(),
        ]),
      ),
    );
  }
}
