// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupOneEvent extends Equatable {}

/// Event that is dispatched when the SignupOne widget is first created.
class SignupOneInitialEvent extends SignupOneEvent {
  @override
  List<Object?> get props => [];
}
