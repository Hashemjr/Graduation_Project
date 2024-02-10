// ignore_for_file: must_be_immutable

part of 'reset_passwordtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordtwoEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordtwo widget is first created.
class ResetPasswordtwoInitialEvent extends ResetPasswordtwoEvent {
  @override
  List<Object?> get props => [];
}
