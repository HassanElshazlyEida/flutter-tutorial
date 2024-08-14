
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/counter/counter_provider.dart';
import 'package:udemy_flutter/counter/provider/mycounter.dart';

class SecondStateManagementProvider extends StatelessWidget {
  const SecondStateManagementProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second State Management Provider'),
      ),
      body: Center(
        child: Consumer<MyCounter>(
          builder: (context, MyCounter state, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    state.decrement();
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  '${state.counter}',
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    state.increment();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.blue,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
