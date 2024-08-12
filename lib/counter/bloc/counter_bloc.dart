import 'package:bloc/bloc.dart';
import 'package:udemy_flutter/counter/bloc/counter_event.dart';

class CounterBloc extends Cubit<int> {

  CounterBloc() : super(0); 

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}