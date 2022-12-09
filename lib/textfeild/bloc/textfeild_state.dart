// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class TextfeildState extends Equatable {
  final String stateText;
  
  const TextfeildState({
    required this.stateText,
    
  });


  @override
  List<Object> get props => [stateText];

  TextfeildState copyWith({
    String? stateText,
  }) {
    return TextfeildState(
      stateText: stateText ?? this.stateText,
    );
  }
}


// class  TextfeildInitial extends TextfeildState {
//   TextfeildInitial({required super.stateText});
 


  
//  }
