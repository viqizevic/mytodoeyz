import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy apples'),
    Task(name: 'Buy bananas'),
    Task(name: 'Buy cherries'),
    Task(name: 'Buy dodol'),
    Task(name: 'Buy eggs'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  int get tasksOpenCount {
    return _tasks.where((task) => !task.isDone).length;
  }

  void addNewTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleDoneTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
