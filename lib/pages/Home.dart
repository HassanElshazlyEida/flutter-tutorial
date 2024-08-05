import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/util/dialog_box.dart';

import '../util/todo_tile.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List toDoList = [
    {
      'taskName': 'Task 1',
      'taskCompleted': true
    },
    {
      'taskName': 'Task 2',
      'taskCompleted': false
    },
    {
      'taskName': 'Task 3',
      'taskCompleted': true
    },
    {
      'taskName': 'Task 4',
      'taskCompleted': false
    },
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
        toDoList[index]['taskCompleted'] = value;
    });

  }
  
  void appendToDoList(String text){
    setState(() {
      toDoList.add({
        'taskName': text,
        'taskCompleted': false
      });
    });
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

  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
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
        itemCount: toDoList.length,
        itemBuilder: (context, index){
          return ToDoTile(
            taskName: toDoList[index]['taskName'],
            taskCompleted: toDoList[index]['taskCompleted'],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteTask: (context) => deleteTask(index) ,
          );
        },
      ),
    );
  }
}