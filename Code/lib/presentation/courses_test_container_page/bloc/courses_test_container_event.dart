// ignore_for_file: must_be_immutable

part of 'courses_test_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CoursesTestContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoursesTestContainerEvent extends Equatable {}

/// Event that is dispatched when the CoursesTestContainer widget is first created.
class CoursesTestContainerInitialEvent extends CoursesTestContainerEvent {
  @override
  List<Object?> get props => [];
}
