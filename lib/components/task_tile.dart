import 'package:flutter/material.dart';
import 'package:flutter_todo_app/components/task_checkbox.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task number 1',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxStatus: isChecked,
        checkboxToggle: (bool newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}
