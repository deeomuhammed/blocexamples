import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'checkbox_event.dart';
part 'checkbox_state.dart';

class CheckboxBloc extends Bloc<CheckboxEvent, CheckboxState> {

 
  CheckboxBloc() : super( CheckboxState(
   
          checkBoxes:  [
            data(name: 'dart', val: false),
            data(name: 'flutter', val: false),
                     ],
        )) {

    on<Buttonclickevent>((event, emit) {
     List<data> checks = List.from(state.checkBoxes);
     checks[event.index] = checks[event.index].copyWith(val:event.boolyan);
     emit(state.copyWith(checkBoxes: checks));
    });

  }
}
 
