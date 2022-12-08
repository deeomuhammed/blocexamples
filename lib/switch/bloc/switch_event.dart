part of 'switch_bloc.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();

  @override
  List<Object> get props => [];
}

class Switchclickevent extends SwitchEvent {
  final bool isclicked;
  final int index;
  Switchclickevent(this.isclicked,this.index);
  @override
  List<Object> get props => [isclicked,index];



}
