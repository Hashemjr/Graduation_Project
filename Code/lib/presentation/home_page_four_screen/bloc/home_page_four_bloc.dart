import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_four_screen/models/home_page_four_model.dart';
part 'home_page_four_event.dart';
part 'home_page_four_state.dart';

/// A bloc that manages the state of a HomePageFour according to the event that is dispatched to it.
class HomePageFourBloc extends Bloc<HomePageFourEvent, HomePageFourState> {
  HomePageFourBloc(HomePageFourState initialState) : super(initialState) {
    on<HomePageFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageFourInitialEvent event,
    Emitter<HomePageFourState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
