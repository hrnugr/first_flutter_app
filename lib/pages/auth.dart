import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:my_app/pages/home.dart';
//import 'home.dart';

class Auth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Auth();
  }
}

class _Auth extends State<Auth> {
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "username"),
              onChanged: (String value) {
                setState(() {
                  username = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "password"),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  password = value;
                });
              },
            ),
            RaisedButton(
              child: Text("Login"),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/home"
                    // MaterialPageRoute(
                    //   builder: (BuildContext context) => HomePage(),
                    // ),
                    );
              },
            )
          ],
        ),
      ),
    );
  }
}
