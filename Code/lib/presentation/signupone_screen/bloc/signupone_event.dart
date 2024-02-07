// ignore_for_file: must_be_immutable

part of 'signupone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Signupone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignuponeEvent extends Equatable {}

/// Event that is dispatched when the Signupone widget is first created.
class SignuponeInitialEvent extends SignuponeEvent {
  @override
  List<Object?> get props => [];
}
