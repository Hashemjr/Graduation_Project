import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/forget_passwordone_screen/models/forget_passwordone_model.dart';
part 'forget_passwordone_event.dart';
part 'forget_passwordone_state.dart';

/// A bloc that manages the state of a ForgetPasswordone according to the event that is dispatched to it.
class ForgetPasswordoneBloc
    extends Bloc<ForgetPasswordoneEvent, ForgetPasswordoneState> {
  ForgetPasswordoneBloc(ForgetPasswordoneState initialState)
      : super(initialState) {
    on<ForgetPasswordoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgetPasswordoneInitialEvent event,
    Emitter<ForgetPasswordoneState> emit,
  ) async {}
}
