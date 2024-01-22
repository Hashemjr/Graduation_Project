// ignore_for_file: must_be_immutable

part of 'courses_bloc.dart';

/// Represents the state of Courses in the application.
class CoursesState extends Equatable {
  CoursesState({
    this.userNameController,
    this.passwordController,
    this.coursesModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  CoursesModel? coursesModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        coursesModelObj,
      ];
  CoursesState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    CoursesModel? coursesModelObj,
  }) {
    return CoursesState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      coursesModelObj: coursesModelObj ?? this.coursesModelObj,
    );
  }
}
