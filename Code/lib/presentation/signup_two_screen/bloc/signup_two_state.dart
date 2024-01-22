// ignore_for_file: must_be_immutable

part of 'signup_two_bloc.dart';

/// Represents the state of SignupTwo in the application.
class SignupTwoState extends Equatable {
  SignupTwoState({
    this.userNameEditTextController,
    this.dayValueEditTextController,
    this.monthValueEditTextController,
    this.yearValueEditTextController,
    this.genderValueEditTextController,
    this.firstNameEditTextController,
    this.lastNameEditTextController,
    this.signupTwoModelObj,
  });

  TextEditingController? userNameEditTextController;

  TextEditingController? dayValueEditTextController;

  TextEditingController? monthValueEditTextController;

  TextEditingController? yearValueEditTextController;

  TextEditingController? genderValueEditTextController;

  TextEditingController? firstNameEditTextController;

  TextEditingController? lastNameEditTextController;

  SignupTwoModel? signupTwoModelObj;

  @override
  List<Object?> get props => [
        userNameEditTextController,
        dayValueEditTextController,
        monthValueEditTextController,
        yearValueEditTextController,
        genderValueEditTextController,
        firstNameEditTextController,
        lastNameEditTextController,
        signupTwoModelObj,
      ];
  SignupTwoState copyWith({
    TextEditingController? userNameEditTextController,
    TextEditingController? dayValueEditTextController,
    TextEditingController? monthValueEditTextController,
    TextEditingController? yearValueEditTextController,
    TextEditingController? genderValueEditTextController,
    TextEditingController? firstNameEditTextController,
    TextEditingController? lastNameEditTextController,
    SignupTwoModel? signupTwoModelObj,
  }) {
    return SignupTwoState(
      userNameEditTextController:
          userNameEditTextController ?? this.userNameEditTextController,
      dayValueEditTextController:
          dayValueEditTextController ?? this.dayValueEditTextController,
      monthValueEditTextController:
          monthValueEditTextController ?? this.monthValueEditTextController,
      yearValueEditTextController:
          yearValueEditTextController ?? this.yearValueEditTextController,
      genderValueEditTextController:
          genderValueEditTextController ?? this.genderValueEditTextController,
      firstNameEditTextController:
          firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:
          lastNameEditTextController ?? this.lastNameEditTextController,
      signupTwoModelObj: signupTwoModelObj ?? this.signupTwoModelObj,
    );
  }
}
