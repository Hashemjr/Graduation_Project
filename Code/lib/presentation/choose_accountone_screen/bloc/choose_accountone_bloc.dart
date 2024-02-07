import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/choose_accountone_screen/models/choose_accountone_model.dart';
part 'choose_accountone_event.dart';
part 'choose_accountone_state.dart';

/// A bloc that manages the state of a ChooseAccountone according to the event that is dispatched to it.
class ChooseAccountoneBloc
    extends Bloc<ChooseAccountoneEvent, ChooseAccountoneState> {
  ChooseAccountoneBloc(ChooseAccountoneState initialState)
      : super(initialState) {
    on<ChooseAccountoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseAccountoneInitialEvent event,
    Emitter<ChooseAccountoneState> emit,
  ) async {}
}
