// ignore_for_file: must_be_immutable

part of 'choose_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccount widget is first created.
class ChooseAccountInitialEvent extends ChooseAccountEvent {
  @override
  List<Object?> get props => [];
}
