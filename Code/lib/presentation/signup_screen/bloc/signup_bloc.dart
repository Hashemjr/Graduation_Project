import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Add this import
part 'signup_event.dart';
part 'signup_state.dart';

/// A bloc that manages the state of a Signup according to the event that is dispatched to it.
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initialState) : super(initialState) {
    on<SignupInitialEvent>(_onInitialize);
    on<UpdateSelectedDate>(_onUpdateSelectedDate);
    // Add more event handlers here if needed
  }
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is UpdateSelectedDate) {
      yield* _mapUpdateSelectedDateToState(event);
    } else if (event is SignupInitialEvent) {
      yield* _mapSignupInitialEventToState(event);
    }
    // Add handlers for other events if needed
  }

  Stream<SignupState> _mapUpdateSelectedDateToState(UpdateSelectedDate event) async* {
    yield state.copyWith(selectedDateText: event.selectedDate);
  }
  Stream<SignupState> _mapSignupInitialEventToState(
      SignupInitialEvent event) async* {
    // Handle SignupInitialEvent if needed
    // For example, emit an initial state here
  }

  void _onInitialize(
    SignupInitialEvent event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      userNameController: TextEditingController(),
      monthValueController: TextEditingController(),
      yearValueController: TextEditingController(),
      genderValueController: TextEditingController(),
    ));
  }

  // Define the _onUpdateSelectedDate method
  void _onUpdateSelectedDate(
    UpdateSelectedDate event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(selectedDateText: event.selectedDate));
  }
}

/*
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:chineasy/presentation/signup_screen/models/signup_model.dart';
part 'signup_event.dart';
part 'signup_state.dart';

/// A bloc that manages the state of a Signup according to the event that is dispatched to it.
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initialState) : super(initialState) {
    on<SignupInitialEvent>(_onInitialize);
    on<UpdateSelectedDate>(_onUpdateSelectedDate);
    // Add more event handlers here if needed
  }

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is UpdateSelectedDate) {
      yield* _mapUpdateSelectedDateToState(event);
    } else if (event is SignupInitialEvent) {
      yield* _mapSignupInitialEventToState(event);
    }
    // Add handlers for other events if needed
  }

  Stream<SignupState> _mapUpdateSelectedDateToState(
      UpdateSelectedDate event) async* {
    yield state.copyWith(selectedDateText: event.selectedDate);
  }

  Stream<SignupState> _mapSignupInitialEventToState(
      SignupInitialEvent event) async* {
    // Handle SignupInitialEvent if needed
    // For example, emit an initial state here
  }

  void _onInitialize(
    SignupInitialEvent event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(
      firstNameController: TextEditingController(),
      lastNameController: TextEditingController(),
      userNameController: TextEditingController(),
      monthValueController: TextEditingController(),
      yearValueController: TextEditingController(),
      genderValueController: TextEditingController(),
    ));
  }
}
*/