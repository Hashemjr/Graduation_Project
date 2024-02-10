// ignore_for_file: must_be_immutable

part of 'choose_accountone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccountone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountoneEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccountone widget is first created.
class ChooseAccountoneInitialEvent extends ChooseAccountoneEvent {
  @override
  List<Object?> get props => [];
}
