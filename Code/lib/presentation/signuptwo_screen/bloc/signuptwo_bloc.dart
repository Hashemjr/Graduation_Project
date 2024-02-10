import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/signuptwo_screen/models/signuptwo_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'signuptwo_event.dart';
part 'signuptwo_state.dart';

/// A bloc that manages the state of a Signuptwo according to the event that is dispatched to it.
class SignuptwoBloc extends Bloc<SignuptwoEvent, SignuptwoState>
    with CodeAutoFill {
  SignuptwoBloc(SignuptwoState initialState) : super(initialState) {
    on<SignuptwoInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SignuptwoState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    SignuptwoInitialEvent event,
    Emitter<SignuptwoState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
