import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:flutter_todo_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Choose uni modules'),
    Task(name: 'Complete enroloment'),
    Task(name: 'Apply to SFE'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: ListView(
        children: <Widget>[
          TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
          TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
          TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
        ],
      ),
    );
  }
}
