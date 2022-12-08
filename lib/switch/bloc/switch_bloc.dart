import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<Switchclickevent, SwitchState> {
  SwitchBloc() : super(
    SwitchState(checkBoxes:[
      SwitchModel(name: 'dart', val: false),
      SwitchModel(name: 'go', val: false),
      SwitchModel(name: 'python', val: false),
      SwitchModel(name: 'java', val: false),
      SwitchModel(name: 'c++', val: false),
  ] )) {
    on<Switchclickevent>((event, emit) {
   List<SwitchModel> checks = List.from(state.checkBoxes);
     checks[event.index] = checks[event.index].copyWith(val:event.isclicked);
     emit(state.copyWith(checkBoxes: checks));
 
    });
  }
}
