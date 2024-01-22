// ignore_for_file: must_be_immutable

part of 'welcome_page_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageFourEvent extends Equatable {}

/// Event that is dispatched when the WelcomePageFour widget is first created.
class WelcomePageFourInitialEvent extends WelcomePageFourEvent {
  @override
  List<Object?> get props => [];
}
