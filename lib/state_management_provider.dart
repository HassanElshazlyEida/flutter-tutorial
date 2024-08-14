
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';
import 'package:udemy_flutter/counter/provider/mycounter.dart';

class StateManagementProvider extends StatelessWidget {
  const StateManagementProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: const  MaterialApp(
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
      body: ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
        child: Center(
          child: Row(
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
          )
        ),
      )
    );
  }

} 