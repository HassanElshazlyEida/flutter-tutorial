import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:udemy_flutter/Getx/page_one.dart';
import 'package:udemy_flutter/Getx/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page three'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Get.to(const PageOne());
                },
                child: const Text('Page one'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Get.off(const PageTwo());
                },
                child: const Text('Page two'),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: (){
                  Get.offAll(const PageThree());
                },
                child: const Text('Page three'),
              ),
            ),

          
          ],
        ),
      ),  
    );
  }
}