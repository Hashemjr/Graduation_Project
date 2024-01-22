// ignore_for_file: must_be_immutable

part of 'home_page_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageSevenEvent extends Equatable {}

/// Event that is dispatched when the HomePageSeven widget is first created.
class HomePageSevenInitialEvent extends HomePageSevenEvent {
  @override
  List<Object?> get props => [];
}
