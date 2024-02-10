import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/signupone_screen/models/signupone_model.dart';
part 'signupone_event.dart';
part 'signupone_state.dart';

/// A bloc that manages the state of a Signupone according to the event that is dispatched to it.
class SignuponeBloc extends Bloc<SignuponeEvent, SignuponeState> {
  SignuponeBloc(SignuponeState initialState) : super(initialState) {
    on<SignuponeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignuponeInitialEvent event,
    Emitter<SignuponeState> emit,
  ) async {
    emit(state.copyWith(
        emailFieldController: TextEditingController(),
        emailFieldController1: TextEditingController(),
        passwordFieldController: TextEditingController(),
        confirmPasswordFieldController: TextEditingController()));
  }
}
