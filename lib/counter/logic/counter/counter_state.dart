part of 'counter_bloc.dart';


abstract class CounterState extends Equatable {

}

class CounterInitial extends CounterState {
  CounterInitial();
  
  @override
  List<Object?> get props => [];
  //:super(countvalue: 0);
  
 }

class Counterready extends CounterState {
 final countvalue;

  Counterready({required this.countvalue});
  
  @override
  // TODO: implement props
  List<Object?> get props => [countvalue];
  
 }