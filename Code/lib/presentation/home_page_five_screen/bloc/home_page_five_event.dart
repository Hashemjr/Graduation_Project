// ignore_for_file: must_be_immutable

part of 'home_page_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageFiveEvent extends Equatable {}

/// Event that is dispatched when the HomePageFive widget is first created.
class HomePageFiveInitialEvent extends HomePageFiveEvent {
  @override
  List<Object?> get props => [];
}
