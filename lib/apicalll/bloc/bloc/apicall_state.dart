part of 'apicall_bloc.dart';

abstract class ApicallState extends Equatable {}
//loding
class ApicallLodingstate extends ApicallState {
    @override
  List<Object> get props => [];
}
//loaded
class ApicallLodedstate extends ApicallState {
  ApicallLodedstate(this.dogs);
  final Dog dogs;
    @override
  List<Object> get props => [dogs];
}
//error