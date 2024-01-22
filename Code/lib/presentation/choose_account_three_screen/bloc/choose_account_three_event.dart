// ignore_for_file: must_be_immutable

part of 'choose_account_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccountThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountThreeEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccountThree widget is first created.
class ChooseAccountThreeInitialEvent extends ChooseAccountThreeEvent {
  @override
  List<Object?> get props => [];
}
