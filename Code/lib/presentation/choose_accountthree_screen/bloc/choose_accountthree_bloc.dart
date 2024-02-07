import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/choose_accountthree_screen/models/choose_accountthree_model.dart';
part 'choose_accountthree_event.dart';
part 'choose_accountthree_state.dart';

/// A bloc that manages the state of a ChooseAccountthree according to the event that is dispatched to it.
class ChooseAccountthreeBloc
    extends Bloc<ChooseAccountthreeEvent, ChooseAccountthreeState> {
  ChooseAccountthreeBloc(ChooseAccountthreeState initialState)
      : super(initialState) {
    on<ChooseAccountthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountthreeInitialEvent event,
    Emitter<ChooseAccountthreeState> emit,
  ) async {}
}
