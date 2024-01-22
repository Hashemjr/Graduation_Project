// ignore_for_file: must_be_immutable

part of 'welcome_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageThreeEvent extends Equatable {}

/// Event that is dispatched when the WelcomePageThree widget is first created.
class WelcomePageThreeInitialEvent extends WelcomePageThreeEvent {
  @override
  List<Object?> get props => [];
}
