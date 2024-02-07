// ignore_for_file: must_be_immutable

part of 'profile_state_test_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileStateTest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileStateTestEvent extends Equatable {}

/// Event that is dispatched when the ProfileStateTest widget is first created.
class ProfileStateTestInitialEvent extends ProfileStateTestEvent {
  @override
  List<Object?> get props => [];
}
