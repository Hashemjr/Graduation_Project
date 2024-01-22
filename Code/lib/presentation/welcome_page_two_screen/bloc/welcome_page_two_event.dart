// ignore_for_file: must_be_immutable

part of 'welcome_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageTwoEvent extends Equatable {}

/// Event that is dispatched when the WelcomePageTwo widget is first created.
class WelcomePageTwoInitialEvent extends WelcomePageTwoEvent {
  @override
  List<Object?> get props => [];
}
