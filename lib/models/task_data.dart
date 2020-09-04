import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Choose uni modules'),
    Task(name: 'Complete enroloment'),
    Task(name: 'Apply to SFE'),
  ];
}
