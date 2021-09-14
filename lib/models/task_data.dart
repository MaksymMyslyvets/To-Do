import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Go to the gym'),
    Task(name: 'Call Mom'),
    Task(name: 'Call someone'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  //TODO Implement delete function.
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
