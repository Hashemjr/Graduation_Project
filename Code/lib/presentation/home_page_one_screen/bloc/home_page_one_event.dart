// ignore_for_file: must_be_immutable

part of 'home_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageOneEvent extends Equatable {}

/// Event that is dispatched when the HomePageOne widget is first created.
class HomePageOneInitialEvent extends HomePageOneEvent {
  @override
  List<Object?> get props => [];
}
