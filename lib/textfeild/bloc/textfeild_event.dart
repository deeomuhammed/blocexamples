part of 'textfeild_bloc.dart';

abstract class TextfeildEvent extends Equatable {
  const TextfeildEvent();

  @override
  List<Object> get props => [];
}

class OnchnageEvent extends TextfeildEvent {
  final String text;

  OnchnageEvent(this.text);
  @override
  List<Object> get props => [text];
}
