import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy apples'),
    Task(name: 'Buy bananas'),
    Task(name: 'Buy cherries'),
    Task(name: 'Buy dodol'),
    Task(name: 'Buy eggs'),
  ];

  void addNewTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }
}