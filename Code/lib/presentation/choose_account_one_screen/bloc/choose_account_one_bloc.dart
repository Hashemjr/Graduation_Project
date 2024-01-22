import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/choose_account_one_screen/models/choose_account_one_model.dart';
part 'choose_account_one_event.dart';
part 'choose_account_one_state.dart';

/// A bloc that manages the state of a ChooseAccountOne according to the event that is dispatched to it.
class ChooseAccountOneBloc
    extends Bloc<ChooseAccountOneEvent, ChooseAccountOneState> {
  ChooseAccountOneBloc(ChooseAccountOneState initialState)
      : super(initialState) {
    on<ChooseAccountOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountOneInitialEvent event,
    Emitter<ChooseAccountOneState> emit,
  ) async {}
}
