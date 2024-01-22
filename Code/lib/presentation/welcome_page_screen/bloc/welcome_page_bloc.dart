import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/welcome_page_screen/models/welcome_page_model.dart';
part 'welcome_page_event.dart';
part 'welcome_page_state.dart';

/// A bloc that manages the state of a WelcomePage according to the event that is dispatched to it.
class WelcomePageBloc extends Bloc<WelcomePageEvent, WelcomePageState> {
  WelcomePageBloc(WelcomePageState initialState) : super(initialState) {
    on<WelcomePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageInitialEvent event,
    Emitter<WelcomePageState> emit,
  ) async {}
}
