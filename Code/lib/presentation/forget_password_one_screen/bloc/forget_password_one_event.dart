// ignore_for_file: must_be_immutable

part of 'forget_password_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgetPasswordOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgetPasswordOneEvent extends Equatable {}

/// Event that is dispatched when the ForgetPasswordOne widget is first created.
class ForgetPasswordOneInitialEvent extends ForgetPasswordOneEvent {
  @override
  List<Object?> get props => [];
}
