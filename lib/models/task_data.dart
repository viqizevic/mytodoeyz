import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy apples'),
    Task(name: 'Buy bananas'),
    Task(name: 'Buy cherries'),
    Task(name: 'Buy dodol'),
    Task(name: 'Buy eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }

  int get tasksOpenCount {
    int open = 0;
    for (Task task in tasks) {
      if (!task.isDone) {
        open += 1;
      }
    }
    return open;
  }

  void addNewTask(String newTask) {
    tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void toggleDoneTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
