// ignore_for_file: must_be_immutable

part of 'courses_test_container_bloc.dart';

/// Represents the state of CoursesTestContainer in the application.
class CoursesTestContainerState extends Equatable {
  CoursesTestContainerState({this.coursesTestContainerModelObj});

  CoursesTestContainerModel? coursesTestContainerModelObj;

  @override
  List<Object?> get props => [
        coursesTestContainerModelObj,
      ];
  CoursesTestContainerState copyWith(
      {CoursesTestContainerModel? coursesTestContainerModelObj}) {
    return CoursesTestContainerState(
      coursesTestContainerModelObj:
          coursesTestContainerModelObj ?? this.coursesTestContainerModelObj,
    );
  }
}
