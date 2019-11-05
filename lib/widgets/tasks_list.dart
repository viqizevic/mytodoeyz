import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todoeyz/models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData taskData = Provider.of<TaskData>(context);

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            taskData.toggleDoneTask(index);
          },
        );
      },
      itemCount: taskData.tasks.length,
    );
  }
}
