import 'package:mydartapp/mydartapp.dart' as mydartapp;

import 'bloc/counter_bloc.dart';
import 'cubit/counter_cubit.dart';

Future<void> main(List<String> arguments) async {
  // Use the Stream we have created ...
  // Recive numbers from 0 to 10
  // Stream<int> stream = mydartapp.mynumbers(11);
  // // This Calculate the sum of stream numbers ...
  // int result = await mydartapp.sumStream(stream);
  // print("The Result is : $result");
  // *** Create two instaces from Counter Cubit ***
  // final firstCubit = CounterCubit(0);
  // // First state of FirstCubit
  // firstCubit.increment();
  // firstCubit.increment();
  // firstCubit.increment();
  // firstCubit.decrement();
  // print(firstCubit.state);
  // final secoundCubit = CounterCubit(11);
  // print(secoundCubit.state);
  final incrementBloc = CounterBloc();
  print("The initial Number is ${incrementBloc.state}"); // 0
  incrementBloc.add(CounterIncrementPressedEvent());
  await Future.delayed(Duration(seconds: 2));
  print("This is the rersult of Bloc : ${incrementBloc.state}"); // 0
}

// Core concepts ... Bloc

//- Stream
// - Cubit
// - Bloc 
// *** Cubit vs Bloc ***
