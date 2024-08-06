import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool? taskCompleted;
  Function(bool?) onChanged;
  Function(BuildContext) deleteTask;


  ToDoTile({super.key, 
    required this.taskName ,
    this.taskCompleted = false,
    required this.onChanged,
    required this.deleteTask
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 24,top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTask,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(7),
            ),
          ],
        ),
        child: Container(
            padding:const  EdgeInsets.all(24),
           
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
         
            ),
             child: Row(
              children: [
                Checkbox(
                  value: taskCompleted, 
                  onChanged: onChanged,
                  activeColor: Colors.black,
                  ),
                Text(
                  taskName,
                  style: TextStyle(
                    decoration: (taskCompleted == true) ? TextDecoration.lineThrough : null,  
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}