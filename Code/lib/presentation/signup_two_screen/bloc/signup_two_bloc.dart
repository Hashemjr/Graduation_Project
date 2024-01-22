import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/signup_two_screen/models/signup_two_model.dart';
part 'signup_two_event.dart';
part 'signup_two_state.dart';

/// A bloc that manages the state of a SignupTwo according to the event that is dispatched to it.
class SignupTwoBloc extends Bloc<SignupTwoEvent, SignupTwoState> {
  SignupTwoBloc(SignupTwoState initialState) : super(initialState) {
    on<SignupTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignupTwoInitialEvent event,
    Emitter<SignupTwoState> emit,
  ) async {
    emit(state.copyWith(
        userNameEditTextController: TextEditingController(),
        dayValueEditTextController: TextEditingController(),
        monthValueEditTextController: TextEditingController(),
        yearValueEditTextController: TextEditingController(),
        genderValueEditTextController: TextEditingController(),
        firstNameEditTextController: TextEditingController(),
        lastNameEditTextController: TextEditingController()));
  }
}
