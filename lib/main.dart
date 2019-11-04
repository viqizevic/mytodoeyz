import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:my_todoeyz/models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Task> tasks = [
    Task(name: 'Buy apples'),
    Task(name: 'Buy bananas'),
    Task(name: 'Buy cherries'),
    Task(name: 'Buy dodol'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provider<List<Task>>(
        builder: (context) => tasks,
        child: TasksScreen(),
      ),
    );
  }
}
