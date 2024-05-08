// ignore_for_file: must_be_immutable
part of 'signup_bloc.dart';
/// Abstract class for all events that can be dispatched from the
///Signup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupEvent extends Equatable {
  const SignupEvent();
@override
  List<Object?> get props => [];}
class UpdateSelectedDate extends SignupEvent {
  final String? selectedDate;

  UpdateSelectedDate(this.selectedDate);

  @override
  List<Object?> get props => [selectedDate];
}
/// Event that is dispatched when the Signup widget is first created.
class SignupInitialEvent extends SignupEvent {
  @override
  List<Object?> get props => [];
}