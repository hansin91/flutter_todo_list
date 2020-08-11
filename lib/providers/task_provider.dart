import 'package:flutter/foundation.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
   List<Task> tasks = [
    Task(name: 'Build business'),
    Task(name: 'Make million dollars'),
    Task(name: 'Become trillionaire at 35 years old')
  ];

  int get taskCount {
    return tasks.length;
  }
}