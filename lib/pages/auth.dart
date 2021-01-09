import 'package:flutter/material.dart';
//import 'package:my_app/pages/home.dart';
//import 'home.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/home"
                // MaterialPageRoute(
                //   builder: (BuildContext context) => HomePage(),
                // ),
                );
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
