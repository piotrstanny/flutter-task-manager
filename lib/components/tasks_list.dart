import 'package:flutter/material.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({this.tasksList});
  final List tasksList;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: ListView.builder(
        itemCount: widget.tasksList.length,
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasksList[index].name,
            isChecked: widget.tasksList[index].isDone,
            checkboxCallback: (newValue) {
              setState(() {
                widget.tasksList[index].toggleDone();
              });
            },
          );
        },
      ),
    );
  }
}
