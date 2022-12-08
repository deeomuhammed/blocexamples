// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'checkbox_bloc.dart';

abstract class CheckboxEvent extends Equatable {
  const CheckboxEvent();

}

class Buttonclickevent extends CheckboxEvent {
  final bool boolyan;
  final int index;
  Buttonclickevent(this.boolyan,this.index);
  @override
  List<Object> get props => [boolyan,index];



}
