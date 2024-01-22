import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:grad_project/presentation/courses_page/models/courses_model.dart';
part 'courses_event.dart';
part 'courses_state.dart';

/// A bloc that manages the state of a Courses according to the event that is dispatched to it.
class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  CoursesBloc(CoursesState initialState) : super(initialState) {
    on<CoursesInitialEvent>(_onInitialize);
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          common: "common",
          beginnerCourse: "beginner course ",
          numberText: "+90",
          commonImage: ImageConstant.imgFpdl3),
      UserprofilelistItemModel(commonImage: ImageConstant.imgHandDrawnCart)
    ];
  }

  _onInitialize(
    CoursesInitialEvent event,
    Emitter<CoursesState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
    emit(state.copyWith(
        coursesModelObj: state.coursesModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }
}
