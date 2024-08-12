
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_event.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';

class StateManagementBloc extends StatelessWidget {
  const StateManagementBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: const Main(),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}
class Main extends StatefulWidget {
  const Main({super.key});


  @override
  _MainState createState() => _MainState();
  
}
class _MainState extends State<Main> {
  

  @override
  Widget build(BuildContext context) {
    
  return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: myCounter(context)
      )
    );
  }

  Widget myCounter(BuildContext context){
    CounterBloc counterBloc = CounterBloc();
    return StatefulBuilder(builder: 
      (context, setState){
        return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                 counterBloc.add(CounterEvent.decrement);
                },  icon: const Icon(Icons.remove,size: 50,color: Colors.blue,)),
                BlocBuilder<CounterBloc,int>(
                  bloc: counterBloc,
                  builder: (context, state){
                    return Text('$state',style: const TextStyle(
                      fontSize: 50,
                      color: Colors.green
                    ),);
                  },
                ),
                IconButton(onPressed: (){
                     counterBloc.add(CounterEvent.increment);
                },  icon: const Icon(Icons.add,size: 50,color: Colors.red,)),
              ],
        );
      });
  }
} 