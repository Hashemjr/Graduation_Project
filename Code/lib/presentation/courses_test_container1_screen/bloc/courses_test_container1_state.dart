// ignore_for_file: must_be_immutable

part of 'courses_test_container1_bloc.dart';

/// Represents the state of CoursesTestContainer1 in the application.
class CoursesTestContainer1State extends Equatable {
  CoursesTestContainer1State({this.coursesTestContainer1ModelObj});

  CoursesTestContainer1Model? coursesTestContainer1ModelObj;

  @override
  List<Object?> get props => [
        coursesTestContainer1ModelObj,
      ];
  CoursesTestContainer1State copyWith(
      {CoursesTestContainer1Model? coursesTestContainer1ModelObj}) {
    return CoursesTestContainer1State(
      coursesTestContainer1ModelObj:
          coursesTestContainer1ModelObj ?? this.coursesTestContainer1ModelObj,
    );
  }
}
