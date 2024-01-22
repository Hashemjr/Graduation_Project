import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_five_screen/models/home_page_five_model.dart';
part 'home_page_five_event.dart';
part 'home_page_five_state.dart';

/// A bloc that manages the state of a HomePageFive according to the event that is dispatched to it.
class HomePageFiveBloc extends Bloc<HomePageFiveEvent, HomePageFiveState> {
  HomePageFiveBloc(HomePageFiveState initialState) : super(initialState) {
    on<HomePageFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageFiveInitialEvent event,
    Emitter<HomePageFiveState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
