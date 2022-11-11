part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrementPressedEvent extends CounterEvent {}


// Bloc -> Extentions
// counter_event.dart
// counter_state.dart
// counter_bloc.dart