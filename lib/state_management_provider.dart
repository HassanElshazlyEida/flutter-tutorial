
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';
import 'package:udemy_flutter/counter/provider/mycounter.dart';
import 'package:udemy_flutter/second_state_management_provider.dart';

class StateManagementProvider extends StatelessWidget {
  const StateManagementProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
            child:  const MaterialApp(
              home: Main(),
              debugShowCheckedModeBanner: false,
           ),
    );
  }
}
class Main extends StatelessWidget {
  const Main({super.key});


  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Consumer<MyCounter>(
                      builder: (context, MyCounter state, child){
                        return IconButton(onPressed: (){
                          state.decrement();
                        },  icon: const Icon(Icons.remove,size: 50,color: Colors.blue,));
                      },
                    ),
                    Consumer<MyCounter>(
                      builder: (context, MyCounter state, child){
                        return Text('${state.counter}',style: const TextStyle(
                          fontSize: 50,
                          color: Colors.green
                        ),);
                      },
                    ),
                    Consumer(builder: (context, MyCounter state, child){
                      return IconButton(onPressed: (){
                        state.increment();
                      },  icon: const Icon(Icons.add,size: 50,color: Colors.blue,));
                    }),
                   
                  ],
            ),
             ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecondStateManagementProvider()
                    )
                  );
                },
                child: const Text('Go to second page'),
              )
          ],
        )
      )
    );
  }

} 