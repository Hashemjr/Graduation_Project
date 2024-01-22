// ignore_for_file: must_be_immutable

part of 'courses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Courses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoursesEvent extends Equatable {}

/// Event that is dispatched when the Courses widget is first created.
class CoursesInitialEvent extends CoursesEvent {
  @override
  List<Object?> get props => [];
}
