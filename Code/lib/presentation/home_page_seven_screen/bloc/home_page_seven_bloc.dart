import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_seven_screen/models/home_page_seven_model.dart';
part 'home_page_seven_event.dart';
part 'home_page_seven_state.dart';

/// A bloc that manages the state of a HomePageSeven according to the event that is dispatched to it.
class HomePageSevenBloc extends Bloc<HomePageSevenEvent, HomePageSevenState> {
  HomePageSevenBloc(HomePageSevenState initialState) : super(initialState) {
    on<HomePageSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageSevenInitialEvent event,
    Emitter<HomePageSevenState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
