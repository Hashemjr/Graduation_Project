// ignore_for_file: must_be_immutable

part of 'welcome_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageEvent extends Equatable {}

/// Event that is dispatched when the WelcomePage widget is first created.
class WelcomePageInitialEvent extends WelcomePageEvent {
  @override
  List<Object?> get props => [];
}
