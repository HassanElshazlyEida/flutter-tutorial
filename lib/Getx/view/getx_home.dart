import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:udemy_flutter/Getx/controller/home_controller.dart';

class GetXHome extends StatefulWidget {
  @override
  _GetXHomeState createState() => _GetXHomeState();
}

class _GetXHomeState extends State<GetXHome> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter with setState'),
      ),
      body: Center(
        child:  GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller)=> Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
        
           IconButton(onPressed: (){
              controller.increment();
            }, icon: const Icon(Icons.add,size: 30,)),
            Container(
              padding: const EdgeInsets.all(30),
              child: Text(
                '${controller.counter}',
                style: const TextStyle(fontSize: 25),
              ),
            ),
             IconButton(onPressed: (){
              controller.decrement();
            }, icon: const Icon(Icons.remove,size: 30,)),
          ],
        ),)
      ),
    
    );
  }
}