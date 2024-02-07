// ignore_for_file: must_be_immutable

part of 'forget_passwordone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgetPasswordone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgetPasswordoneEvent extends Equatable {}

/// Event that is dispatched when the ForgetPasswordone widget is first created.
class ForgetPasswordoneInitialEvent extends ForgetPasswordoneEvent {
  @override
  List<Object?> get props => [];
}
