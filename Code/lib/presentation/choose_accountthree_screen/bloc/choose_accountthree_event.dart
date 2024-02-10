// ignore_for_file: must_be_immutable

part of 'choose_accountthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseAccountthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseAccountthreeEvent extends Equatable {}

/// Event that is dispatched when the ChooseAccountthree widget is first created.
class ChooseAccountthreeInitialEvent extends ChooseAccountthreeEvent {
  @override
  List<Object?> get props => [];
}
