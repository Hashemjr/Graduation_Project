import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_three_screen/models/home_page_three_model.dart';
part 'home_page_three_event.dart';
part 'home_page_three_state.dart';

/// A bloc that manages the state of a HomePageThree according to the event that is dispatched to it.
class HomePageThreeBloc extends Bloc<HomePageThreeEvent, HomePageThreeState> {
  HomePageThreeBloc(HomePageThreeState initialState) : super(initialState) {
    on<HomePageThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageThreeInitialEvent event,
    Emitter<HomePageThreeState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
