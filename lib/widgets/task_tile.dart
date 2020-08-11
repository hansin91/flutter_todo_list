import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool _isChecked = false;

  void checkTodo (bool checkboxState) {
    setState(() {
      _isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: _isChecked ? TextDecoration.lineThrough : null
        )),
      trailing: TaskCheckbox(_isChecked, checkTodo),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool isChecked;
  final Function toggleCheckbox;

  TaskCheckbox(this.isChecked, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckbox
    );
  }
}