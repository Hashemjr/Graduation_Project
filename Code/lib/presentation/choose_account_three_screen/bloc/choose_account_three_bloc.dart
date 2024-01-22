import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/choose_account_three_screen/models/choose_account_three_model.dart';
part 'choose_account_three_event.dart';
part 'choose_account_three_state.dart';

/// A bloc that manages the state of a ChooseAccountThree according to the event that is dispatched to it.
class ChooseAccountThreeBloc
    extends Bloc<ChooseAccountThreeEvent, ChooseAccountThreeState> {
  ChooseAccountThreeBloc(ChooseAccountThreeState initialState)
      : super(initialState) {
    on<ChooseAccountThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountThreeInitialEvent event,
    Emitter<ChooseAccountThreeState> emit,
  ) async {}
}
