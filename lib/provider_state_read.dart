
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';
import 'package:udemy_flutter/counter/provider/mycounter.dart';
import 'package:udemy_flutter/models/basic_model.dart';
import 'package:udemy_flutter/second_state_management_provider.dart';

class ProviderStateRead extends StatelessWidget {
  const ProviderStateRead({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Main(),
      debugShowCheckedModeBanner: false,
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
      body: ListenableProvider(
        create: (context) => BasicModel('Hassan',24),
        child: const Center(
          child: Column(
            children: [
                MyNameWidget()
            ],
          ),
        ),
      ),
    
    );
  }
}
class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});
  @override
  _MyNameWidgetState createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  late BasicModel basicModel;

  @override
  void initState() {
    basicModel = context.read<BasicModel>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var age = context.watch<BasicModel>().age;
    return Column(
      children: [
        Text('$age'),
        IconButton(onPressed: (){
          basicModel.changeAge();    
        }, icon: const Icon(Icons.add))
      ],
    );
  }
}