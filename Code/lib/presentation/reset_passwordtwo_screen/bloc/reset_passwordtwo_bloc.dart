import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/reset_passwordtwo_screen/models/reset_passwordtwo_model.dart';
part 'reset_passwordtwo_event.dart';
part 'reset_passwordtwo_state.dart';

/// A bloc that manages the state of a ResetPasswordtwo according to the event that is dispatched to it.
class ResetPasswordtwoBloc
    extends Bloc<ResetPasswordtwoEvent, ResetPasswordtwoState> {
  ResetPasswordtwoBloc(ResetPasswordtwoState initialState)
      : super(initialState) {
    on<ResetPasswordtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordtwoInitialEvent event,
    Emitter<ResetPasswordtwoState> emit,
  ) async {}
}
