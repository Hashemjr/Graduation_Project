import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coursescard1_item_model.dart';
import 'package:chineasy/presentation/courses_test_container_page/models/courses_test_container_model.dart';
part 'courses_test_container_event.dart';
part 'courses_test_container_state.dart';

/// A bloc that manages the state of a CoursesTestContainer according to the event that is dispatched to it.
class CoursesTestContainerBloc
    extends Bloc<CoursesTestContainerEvent, CoursesTestContainerState> {
  CoursesTestContainerBloc(CoursesTestContainerState initialState)
      : super(initialState) {
    on<CoursesTestContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CoursesTestContainerInitialEvent event,
    Emitter<CoursesTestContainerState> emit,
  ) async {
    emit(state.copyWith(
        coursesTestContainerModelObj:
            state.coursesTestContainerModelObj?.copyWith(
      coursescard1ItemList: fillCoursescard1ItemList(),
    )));
  }

  List<Coursescard1ItemModel> fillCoursescard1ItemList() {
    return [
      Coursescard1ItemModel(
          userText: "+90",
          courseImage: ImageConstant.imgBackground1,
          courseText: "beginner course ",
          commonText: "common")
    ];
  }
}
