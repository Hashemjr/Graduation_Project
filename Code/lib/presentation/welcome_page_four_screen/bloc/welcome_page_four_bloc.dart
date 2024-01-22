import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/welcome_page_four_screen/models/welcome_page_four_model.dart';
part 'welcome_page_four_event.dart';
part 'welcome_page_four_state.dart';

/// A bloc that manages the state of a WelcomePageFour according to the event that is dispatched to it.
class WelcomePageFourBloc
    extends Bloc<WelcomePageFourEvent, WelcomePageFourState> {
  WelcomePageFourBloc(WelcomePageFourState initialState) : super(initialState) {
    on<WelcomePageFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageFourInitialEvent event,
    Emitter<WelcomePageFourState> emit,
  ) async {}
}
