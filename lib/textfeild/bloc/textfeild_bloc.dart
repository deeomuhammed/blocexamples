import 'package:bloc/bloc.dart';
import 'package:blocexamples/textfeild/bloc/textfeild_state.dart';
import 'package:equatable/equatable.dart';

part 'textfeild_event.dart';

class TextfeildBloc extends Bloc<TextfeildEvent, TextfeildState> {
  TextfeildBloc() : super(TextfeildState(stateText: 'type something')) {
   
   
    on<OnchnageEvent>((event, emit) {
    if( event.text.length>0){
 emit(state.copyWith(stateText: event.text));
    }
else{
   emit(state.copyWith(stateText:'type something'));
}
    
    });
  }
}
