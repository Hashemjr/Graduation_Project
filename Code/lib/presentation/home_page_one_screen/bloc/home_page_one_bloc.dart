import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/home_page_one_screen/models/home_page_one_model.dart';
part 'home_page_one_event.dart';
part 'home_page_one_state.dart';

/// A bloc that manages the state of a HomePageOne according to the event that is dispatched to it.
class HomePageOneBloc extends Bloc<HomePageOneEvent, HomePageOneState> {
  HomePageOneBloc(HomePageOneState initialState) : super(initialState) {
    on<HomePageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePageOneInitialEvent event,
    Emitter<HomePageOneState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
