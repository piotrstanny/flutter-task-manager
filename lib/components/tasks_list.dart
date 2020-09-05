import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              return TaskTile(
                taskTitle: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (newValue) {
//              setState(() {
//                widget.tasksList[index].toggleDone();
//              });
                },
              );
            },
          );
        },
      ),
    );
  }
}
