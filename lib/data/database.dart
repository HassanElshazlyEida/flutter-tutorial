import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  final _tasks = Hive.box('db');
  
  void createInitialData(){
    toDoList = [
      {
        'taskName': 'Task 1',
        'taskCompleted': false
      },
      {
        'taskName': 'Task 2',
        'taskCompleted': false
      },
      {
        'taskName': 'Task 3',
        'taskCompleted': false
      },  

    ];

  }
  void loadData(){
    toDoList = _tasks.get('tasks');
  }
  void updateDatabase(){
    _tasks.put('tasks', toDoList);
  }
}