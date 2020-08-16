part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increment extends CounterEvent {
  final int angka;

  Increment(this.angka);
}
