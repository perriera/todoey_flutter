import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task('Buy milk'),
    Task('Buy eggs'),
    Task('Buy bread'),
  ];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void add(String task) {
    _tasks.add(Task(task));
    notifyListeners();
  }

  void change(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
