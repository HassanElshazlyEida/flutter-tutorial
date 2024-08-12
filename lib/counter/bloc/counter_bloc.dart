import 'package:bloc/bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {

  CounterBloc() : super(0); 

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }
  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    // print(event);
  }
  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    // print(transition);
  }
  
}