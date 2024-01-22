import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/signup_one_screen/models/signup_one_model.dart';
part 'signup_one_event.dart';
part 'signup_one_state.dart';

/// A bloc that manages the state of a SignupOne according to the event that is dispatched to it.
class SignupOneBloc extends Bloc<SignupOneEvent, SignupOneState> {
  SignupOneBloc(SignupOneState initialState) : super(initialState) {
    on<SignupOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupOneInitialEvent event,
    Emitter<SignupOneState> emit,
  ) async {
    emit(state.copyWith(
        backgroundImageController: TextEditingController(),
        emailEditTextController: TextEditingController(),
        passwordEditTextController: TextEditingController(),
        confirmPasswordEditTextController: TextEditingController()));
  }
}
