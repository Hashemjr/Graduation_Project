import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/choose_account_screen/models/choose_account_model.dart';
part 'choose_account_event.dart';
part 'choose_account_state.dart';

/// A bloc that manages the state of a ChooseAccount according to the event that is dispatched to it.
class ChooseAccountBloc extends Bloc<ChooseAccountEvent, ChooseAccountState> {
  ChooseAccountBloc(ChooseAccountState initialState) : super(initialState) {
    on<ChooseAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountInitialEvent event,
    Emitter<ChooseAccountState> emit,
  ) async {}
}
