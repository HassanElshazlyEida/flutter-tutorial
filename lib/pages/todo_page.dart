import 'package:flutter/material.dart';

class ToDoPage extends  StatefulWidget {
  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  final TextEditingController _controller =  TextEditingController();  
  String greetingMessage = '';
  void greetUser(){
    setState(() {
      greetingMessage = _controller.text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(greetingMessage, style:const  TextStyle(fontSize: 30)),  
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                    border: OutlineInputBorder()
                  ),
                ),
                ElevatedButton(onPressed: greetUser, child: const Text('Tap'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}