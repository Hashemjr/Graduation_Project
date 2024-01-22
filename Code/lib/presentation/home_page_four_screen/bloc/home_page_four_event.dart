// ignore_for_file: must_be_immutable

part of 'home_page_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageFourEvent extends Equatable {}

/// Event that is dispatched when the HomePageFour widget is first created.
class HomePageFourInitialEvent extends HomePageFourEvent {
  @override
  List<Object?> get props => [];
}
