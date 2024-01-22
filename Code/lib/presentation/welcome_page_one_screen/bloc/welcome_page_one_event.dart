// ignore_for_file: must_be_immutable

part of 'welcome_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageOneEvent extends Equatable {}

/// Event that is dispatched when the WelcomePageOne widget is first created.
class WelcomePageOneInitialEvent extends WelcomePageOneEvent {
  @override
  List<Object?> get props => [];
}
