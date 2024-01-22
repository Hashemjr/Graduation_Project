// ignore_for_file: must_be_immutable

part of 'home_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageTwoEvent extends Equatable {}

/// Event that is dispatched when the HomePageTwo widget is first created.
class HomePageTwoInitialEvent extends HomePageTwoEvent {
  @override
  List<Object?> get props => [];
}
