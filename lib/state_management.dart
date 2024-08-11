import 'package:flutter/material.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';

class StateManagement extends StatelessWidget {
  const StateManagement({super.key});

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
    var provider = CounterProvider.of(context);

    return StatefulBuilder(builder: 
      (context, setState){
        return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    provider.counter--;
                  });
                },  icon: const Icon(Icons.remove,size: 50,color: Colors.blue,)),
                Text('${provider.counter}',style: const TextStyle(
                  fontSize: 50,
                  color: Colors.green
                ),),
                IconButton(onPressed: (){
                  setState(() {
                    provider.counter++;
                  });
                },  icon: const Icon(Icons.add,size: 50,color: Colors.red,)),
              ],
        );
      });
  }
} 