// ignore_for_file: must_be_immutable

part of 'choose_account_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccountTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountTwoEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccountTwo widget is first created.
class ChooseAccountTwoInitialEvent extends ChooseAccountTwoEvent {
  @override
  List<Object?> get props => [];
}
