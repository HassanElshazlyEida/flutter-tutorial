
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:udemy_flutter/data/database.dart';
import 'package:udemy_flutter/util/dialog_box.dart';

import '../util/todo_tile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _tasks = Hive.box('db');
  
  ToDoDatabase db = ToDoDatabase();

  @override
  void initState(){
    if(_tasks.get('tasks') == null){
        db.createInitialData();
    }else {
        db.loadData();
    }
    super.initState();
 

  }

  void checkBoxChanged(bool? value, int index){
    setState(() {
        db.toDoList[index]['taskCompleted'] = value;
    });
    db.updateDatabase();

  }
  void appendToDoList(String text){
    setState(() {
      db.toDoList.add({
        'taskName': text,
        'taskCompleted': false
      });
    });
     db.updateDatabase();
  }
  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
     db.updateDatabase();
  }
  void createNewTask(){
   
    showDialog(
      context: context,
      builder: (context){
        return DialogBox(
          onSave: (String text){
            appendToDoList(text);
          },

        );
      }
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),

      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: db.toDoList[index]['taskName'],
            taskCompleted: db.toDoList[index]['taskCompleted'],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteTask: (context) => deleteTask(index) ,
          );
        },
      ),
    );
  }
}