part of 'apicall_bloc.dart';

abstract class ApicallEvent extends Equatable {
  const ApicallEvent();

 
}
class ApiloadEvent extends ApicallEvent{
   @override
  List<Object> get props => [];
}