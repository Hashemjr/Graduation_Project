import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_six_screen/models/home_page_six_model.dart';
part 'home_page_six_event.dart';
part 'home_page_six_state.dart';

/// A bloc that manages the state of a HomePageSix according to the event that is dispatched to it.
class HomePageSixBloc extends Bloc<HomePageSixEvent, HomePageSixState> {
  HomePageSixBloc(HomePageSixState initialState) : super(initialState) {
    on<HomePageSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageSixInitialEvent event,
    Emitter<HomePageSixState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
