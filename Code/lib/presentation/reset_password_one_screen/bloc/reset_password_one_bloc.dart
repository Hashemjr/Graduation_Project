import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/reset_password_one_screen/models/reset_password_one_model.dart';
part 'reset_password_one_event.dart';
part 'reset_password_one_state.dart';

/// A bloc that manages the state of a ResetPasswordOne according to the event that is dispatched to it.
class ResetPasswordOneBloc
    extends Bloc<ResetPasswordOneEvent, ResetPasswordOneState> {
  ResetPasswordOneBloc(ResetPasswordOneState initialState)
      : super(initialState) {
    on<ResetPasswordOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordOneInitialEvent event,
    Emitter<ResetPasswordOneState> emit,
  ) async {}
}
