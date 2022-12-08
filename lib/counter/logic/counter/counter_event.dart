part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}
class Decrement extends CounterEvent{}
class Increamenrt extends CounterEvent{}
class Reset extends CounterEvent{}