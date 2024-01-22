import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/welcome_page_one_screen/models/welcome_page_one_model.dart';
part 'welcome_page_one_event.dart';
part 'welcome_page_one_state.dart';

/// A bloc that manages the state of a WelcomePageOne according to the event that is dispatched to it.
class WelcomePageOneBloc
    extends Bloc<WelcomePageOneEvent, WelcomePageOneState> {
  WelcomePageOneBloc(WelcomePageOneState initialState) : super(initialState) {
    on<WelcomePageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageOneInitialEvent event,
    Emitter<WelcomePageOneState> emit,
  ) async {}
}
