import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/signup_three_screen/models/signup_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'signup_three_event.dart';
part 'signup_three_state.dart';

/// A bloc that manages the state of a SignupThree according to the event that is dispatched to it.
class SignupThreeBloc extends Bloc<SignupThreeEvent, SignupThreeState>
    with CodeAutoFill {
  SignupThreeBloc(SignupThreeState initialState) : super(initialState) {
    on<SignupThreeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SignupThreeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    SignupThreeInitialEvent event,
    Emitter<SignupThreeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
