import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task number 1'),
      trailing: Checkbox(
        value: true,
        onChanged: null,
        activeColor: Color(0xff4462FE),
      ),
    );
  }
}
