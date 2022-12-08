// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'checkbox_bloc.dart';

class CheckboxState extends Equatable {

  final List<data> checkBoxes;
  const CheckboxState({
    required this.checkBoxes,
   
  });

  @override
  List<Object> get props => [checkBoxes];

  CheckboxState copyWith({
    List<data>? checkBoxes,
  
  }) {
    return CheckboxState(
      checkBoxes: checkBoxes ?? this.checkBoxes,
     
    );
  }
}



class data extends Equatable {
  final String name;
  final bool val;
  data({
    required this.name,
    required this.val,
  });

  data copyWith({
    String? name,
    bool? val,
  }) {
    return data(
      name: name ?? this.name,
      val: val ?? this.val,
    );
  }

  @override
  List<Object> get props => [name, val];
}
