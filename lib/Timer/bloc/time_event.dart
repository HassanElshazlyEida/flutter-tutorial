import 'package:equatable/equatable.dart';

class TimerEvent extends Equatable {

  @override
  List<Object> get props => [];
}

class Start extends TimerEvent {
  final int duration;

  Start(this.duration);

  @override
  String toString() {
    return 'Start { duration: $duration }';
  }
}
class Pause extends TimerEvent {}
class Resume extends TimerEvent {}
class Reset extends TimerEvent {}
class Tick extends TimerEvent {
  final int duration;

  Tick(this.duration);

  @override
  List<Object> get props => [duration];

  @override
  String toString() {
    return 'Tick { duration: $duration }';
  }
}