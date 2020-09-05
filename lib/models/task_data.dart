import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  // Make tasks private so only accessible from within this class
  List<Task> _tasks = [
    Task(name: 'Choose uni modules'),
    Task(name: 'Complete enroloment'),
    Task(name: 'Apply to SFE'),
  ];

  // Create getter to read list's length, so outside just use methods instead of making calculations within the code out there
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskTitle) {
    final task = Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void toggleChecked(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  List<Task> get getTasks {
    return _tasks;
  }
}
