import 'package:flutter/material.dart';
import '../itemmanager.dart';

class HomePage extends StatelessWidget {
  Map<String, String> frameworks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ItemManager(),
    );
  }
}
