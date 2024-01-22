import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/welcome_page_three_screen/models/welcome_page_three_model.dart';
part 'welcome_page_three_event.dart';
part 'welcome_page_three_state.dart';

/// A bloc that manages the state of a WelcomePageThree according to the event that is dispatched to it.
class WelcomePageThreeBloc
    extends Bloc<WelcomePageThreeEvent, WelcomePageThreeState> {
  WelcomePageThreeBloc(WelcomePageThreeState initialState)
      : super(initialState) {
    on<WelcomePageThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageThreeInitialEvent event,
    Emitter<WelcomePageThreeState> emit,
  ) async {}
}
