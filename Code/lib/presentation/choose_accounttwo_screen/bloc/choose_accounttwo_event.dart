// ignore_for_file: must_be_immutable

part of 'choose_accounttwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccounttwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccounttwoEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccounttwo widget is first created.
class ChooseAccounttwoInitialEvent extends ChooseAccounttwoEvent {
  @override
  List<Object?> get props => [];
}
