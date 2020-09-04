import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  TaskTile({this.taskTitle, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Color(0xff4462FE),
        onChanged: null,
      ),
    );
  }
}

//(bool newValue) {
//setState(() {
//isChecked = newValue;
//});
//},
