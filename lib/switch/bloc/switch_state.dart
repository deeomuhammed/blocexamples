// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'switch_bloc.dart';

// abstract 
class SwitchState extends Equatable {

  final List<SwitchModel> checkBoxes;
  const SwitchState({
    required this.checkBoxes,
   
  });

  
  @override
  List<Object> get props => [checkBoxes];

  SwitchState copyWith({
    List<SwitchModel>? checkBoxes,
  }) {
    return SwitchState(
      checkBoxes: checkBoxes ?? this.checkBoxes,
    );
  }
}







class SwitchModel extends Equatable {
 final String name;
  final bool val;
  SwitchModel({
    required this.name,
    required this.val,
  });


  SwitchModel copyWith({
    String? name,
    bool? val,
  }) {
    return SwitchModel(
      name: name ?? this.name,
      val: val ?? this.val,
    );
  }
  
  @override
  
  List<Object?> get props => [name,val];
}
