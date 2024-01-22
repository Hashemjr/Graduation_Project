// ignore_for_file: must_be_immutable

part of 'home_page_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageSixEvent extends Equatable {}

/// Event that is dispatched when the HomePageSix widget is first created.
class HomePageSixInitialEvent extends HomePageSixEvent {
  @override
  List<Object?> get props => [];
}
