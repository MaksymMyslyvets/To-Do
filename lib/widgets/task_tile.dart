import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(taskTitle),
        value: isChecked,
        activeColor: Colors.lightGreen[800],
        onChanged: (value) {
          checkboxCallback(value);
        });
  }
}
