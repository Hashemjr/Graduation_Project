// ignore_for_file: must_be_immutable

part of 'courses_test_container1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CoursesTestContainer1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoursesTestContainer1Event extends Equatable {}

/// Event that is dispatched when the CoursesTestContainer1 widget is first created.
class CoursesTestContainer1InitialEvent extends CoursesTestContainer1Event {
  @override
  List<Object?> get props => [];
}
