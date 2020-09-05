import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  // Make tasks private so only accessible from within this class
  List<Task> _tasks = [
    Task(
        name:
            'This is example task.\nCheck it off once completed or press & hold to delete it.'),
  ];

  // Create getter to read list's length, so outside just use methods instead of making calculations within the code out there
  int get taskCount {
    int count = 0;
    for (Task task in _tasks) {
      if (!task.isDone) {
        count++;
      }
    }
    return count;
  }

  int get listLength {
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

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  List<Task> get getTasks {
    return _tasks;
  }
}
