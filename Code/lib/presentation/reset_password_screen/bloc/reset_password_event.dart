// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPassword widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordEvent extends Equatable {}

/// Event that is dispatched when the ResetPassword widget is first created.
class ResetPasswordInitialEvent extends ResetPasswordEvent {
  @override
  List<Object?> get props => [];
}
