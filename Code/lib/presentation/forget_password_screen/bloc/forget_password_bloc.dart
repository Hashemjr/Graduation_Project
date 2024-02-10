import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/forget_password_screen/models/forget_password_model.dart';
part 'forget_password_event.dart';
part 'forget_password_state.dart';

/// A bloc that manages the state of a ForgetPassword according to the event that is dispatched to it.
class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc(ForgetPasswordState initialState) : super(initialState) {
    on<ForgetPasswordInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgetPasswordInitialEvent event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
