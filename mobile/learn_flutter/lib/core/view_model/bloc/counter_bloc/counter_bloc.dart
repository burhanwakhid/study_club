import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    if(event is Increment){
      yield event.angka+1;
    }
  }
}
