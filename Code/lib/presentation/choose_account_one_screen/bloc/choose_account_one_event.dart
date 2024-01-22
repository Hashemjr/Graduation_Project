// ignore_for_file: must_be_immutable

part of 'choose_account_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccountOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountOneEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccountOne widget is first created.
class ChooseAccountOneInitialEvent extends ChooseAccountOneEvent {
  @override
  List<Object?> get props => [];
}
