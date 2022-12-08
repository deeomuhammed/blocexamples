import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  
  CounterBloc() : super(CounterInitial()) {
    on<Decrement>((event, emit) {
      if(state is Counterready){
      if((state as Counterready).countvalue>0){
   emit(Counterready(countvalue: (state as Counterready).countvalue-1));}
     }   });
   
    on<Increamenrt>((event, emit) {  if(state is Counterready){emit(Counterready(countvalue: (state as Counterready).countvalue+1));}});
    on<Reset>((event, emit) =>emit(Counterready(countvalue: 0)));
  }


}
