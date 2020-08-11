import 'package:flutter/foundation.dart';
import 'dart:collection';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
   List<Task> _tasks = [
    Task(name: 'Build business'),
    Task(name: 'Make million dollars'),
    Task(name: 'Become trillionaire at 35 years old')
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}