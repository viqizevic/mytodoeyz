import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final inputTextController = TextEditingController();
  final Function addNewTask;

  AddTaskScreen({this.addNewTask});

  void _submitNewTask(BuildContext context) {
    final enteredTask = inputTextController.text;
    if (enteredTask.isEmpty) {
      return;
    }
    addNewTask(enteredTask);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                controller: inputTextController,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  _submitNewTask(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
