import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final int index;
  final Task add;
  final Function change;
  final Function delete;

  TaskTile(this.index, {this.add, this.change, this.delete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        add.name,
        style: TextStyle(
          decoration: add.isDone ? TextDecoration.lineThrough : null,
          color: Colors.lightBlueAccent,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: add.isDone,
        onChanged: (value) {
          this.change(index);
        },
      ),
      onLongPress: () {
        this.delete(index);
      },
    );
  }
}
