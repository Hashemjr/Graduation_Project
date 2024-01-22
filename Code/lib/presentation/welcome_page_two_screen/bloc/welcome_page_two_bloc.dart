import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/welcome_page_two_screen/models/welcome_page_two_model.dart';
part 'welcome_page_two_event.dart';
part 'welcome_page_two_state.dart';

/// A bloc that manages the state of a WelcomePageTwo according to the event that is dispatched to it.
class WelcomePageTwoBloc
    extends Bloc<WelcomePageTwoEvent, WelcomePageTwoState> {
  WelcomePageTwoBloc(WelcomePageTwoState initialState) : super(initialState) {
    on<WelcomePageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageTwoInitialEvent event,
    Emitter<WelcomePageTwoState> emit,
  ) async {}
}
