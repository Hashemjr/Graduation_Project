import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/choose_accounttwo_screen/models/choose_accounttwo_model.dart';
part 'choose_accounttwo_event.dart';
part 'choose_accounttwo_state.dart';

/// A bloc that manages the state of a ChooseAccounttwo according to the event that is dispatched to it.
class ChooseAccounttwoBloc
    extends Bloc<ChooseAccounttwoEvent, ChooseAccounttwoState> {
  ChooseAccounttwoBloc(ChooseAccounttwoState initialState)
      : super(initialState) {
    on<ChooseAccounttwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccounttwoInitialEvent event,
    Emitter<ChooseAccounttwoState> emit,
  ) async {}
}
