// ignore_for_file: must_be_immutable

part of 'signup_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupTwoEvent extends Equatable {}

/// Event that is dispatched when the SignupTwo widget is first created.
class SignupTwoInitialEvent extends SignupTwoEvent {
  @override
  List<Object?> get props => [];
}
