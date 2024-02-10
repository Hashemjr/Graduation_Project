import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/courses_test_container1_screen/models/courses_test_container1_model.dart';
part 'courses_test_container1_event.dart';
part 'courses_test_container1_state.dart';

/// A bloc that manages the state of a CoursesTestContainer1 according to the event that is dispatched to it.
class CoursesTestContainer1Bloc
    extends Bloc<CoursesTestContainer1Event, CoursesTestContainer1State> {
  CoursesTestContainer1Bloc(CoursesTestContainer1State initialState)
      : super(initialState) {
    on<CoursesTestContainer1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    CoursesTestContainer1InitialEvent event,
    Emitter<CoursesTestContainer1State> emit,
  ) async {}
}
