import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {


  final Function(String) onSave;
  final TextEditingController _taskName = TextEditingController();

  DialogBox({super.key, required this.onSave});

  void _onSave(BuildContext context) {
    onSave(_taskName.text);
    
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
        actionsPadding: EdgeInsets.all(8),
        title: Text('Create New Task'),
        content: Container(
          width: 350,

          child: TextField(
            decoration:const  InputDecoration(
              hintText: 'Enter Task Name',
              border: OutlineInputBorder(),
             
            ),
            controller:_taskName,

          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: (){
               _onSave(context);
            },
            child: const Text('Create'),
          ),
        ],
      );
  }
}