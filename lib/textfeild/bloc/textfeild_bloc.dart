import 'package:bloc/bloc.dart';
import 'package:blocexamples/textfeild/bloc/textfeild_state.dart';
import 'package:equatable/equatable.dart';

part 'textfeild_event.dart';

class TextfeildBloc extends Bloc<TextfeildEvent, TextfeildState> {
  TextfeildBloc() : super(TextfeildState(stateText: '')) {
    on<OnchnageEvent>((event, emit) {
    

     emit(state.copyWith(stateText: event.text));
    });
  }
}
