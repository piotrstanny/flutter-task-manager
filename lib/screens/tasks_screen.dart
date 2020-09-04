import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCDDC39),
        body: Column(
          children: <Widget>[
            Icon(Icons.format_list_bulleted),
            Text('Task Manager'),
          ],
        ));
  }
}
