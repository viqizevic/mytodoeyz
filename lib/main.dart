import 'package:flutter/material.dart';
import 'package:my_todoeyz/models/task_data.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<TaskData>(
        builder: (context) => TaskData(),
        child: TasksScreen(),
      ),
    );
  }
}
