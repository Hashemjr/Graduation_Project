import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/choose_account_two_screen/models/choose_account_two_model.dart';
part 'choose_account_two_event.dart';
part 'choose_account_two_state.dart';

/// A bloc that manages the state of a ChooseAccountTwo according to the event that is dispatched to it.
class ChooseAccountTwoBloc
    extends Bloc<ChooseAccountTwoEvent, ChooseAccountTwoState> {
  ChooseAccountTwoBloc(ChooseAccountTwoState initialState)
      : super(initialState) {
    on<ChooseAccountTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountTwoInitialEvent event,
    Emitter<ChooseAccountTwoState> emit,
  ) async {}
}
