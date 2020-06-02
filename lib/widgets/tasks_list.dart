import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            index,
            add: taskData.tasks[index],
            change: (index) {
              taskData.change(index);
            },
            delete: (index) {
              taskData.delete(index);
            },
          ),
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
