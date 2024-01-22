// ignore_for_file: must_be_immutable

part of 'home_page_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageContainerEvent extends Equatable {}

/// Event that is dispatched when the HomePageContainer widget is first created.
class HomePageContainerInitialEvent extends HomePageContainerEvent {
  @override
  List<Object?> get props => [];
}
