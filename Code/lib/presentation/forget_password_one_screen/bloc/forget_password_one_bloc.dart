import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:grad_project/presentation/forget_password_one_screen/models/forget_password_one_model.dart';
part 'forget_password_one_event.dart';
part 'forget_password_one_state.dart';

/// A bloc that manages the state of a ForgetPasswordOne according to the event that is dispatched to it.
class ForgetPasswordOneBloc
    extends Bloc<ForgetPasswordOneEvent, ForgetPasswordOneState> {
  ForgetPasswordOneBloc(ForgetPasswordOneState initialState)
      : super(initialState) {
    on<ForgetPasswordOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgetPasswordOneInitialEvent event,
    Emitter<ForgetPasswordOneState> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
