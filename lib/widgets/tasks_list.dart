import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/providers/task_provider.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, data, child) {
        return ListView.builder(
          itemCount: data.taskCount,
          itemBuilder: (context, index) {
          final task = data.tasks[index];
          return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (value) {
                data.updateTask(task);
              },
              longPressCallback: () {
                data.deleteTask(task);
              },
            );
          }
        );
      },
    );
  }
}