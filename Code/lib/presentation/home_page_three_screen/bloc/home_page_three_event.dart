// ignore_for_file: must_be_immutable

part of 'home_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageThreeEvent extends Equatable {}

/// Event that is dispatched when the HomePageThree widget is first created.
class HomePageThreeInitialEvent extends HomePageThreeEvent {
  @override
  List<Object?> get props => [];
}
