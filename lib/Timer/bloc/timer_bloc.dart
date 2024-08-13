import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:udemy_flutter/Timer/bloc/timer_state.dart';
import 'package:udemy_flutter/Timer/ticker.dart';

class TimeBloc extends Cubit<TimerState> {
  final int _duration = 60;
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;


  TimeBloc({required Ticker ticker})
      : _ticker = ticker,
      super(const Ready(60));

  

 
}