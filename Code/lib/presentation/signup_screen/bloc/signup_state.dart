// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.firstNameController,
    this.lastNameController,
    this.userNameController,
    this.monthValueController,
    this.yearValueController,
    this.genderValueController,
    this.signupModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? userNameController;

  TextEditingController? monthValueController;

  TextEditingController? yearValueController;

  TextEditingController? genderValueController;

  SignupModel? signupModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        userNameController,
        monthValueController,
        yearValueController,
        genderValueController,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? userNameController,
    TextEditingController? monthValueController,
    TextEditingController? yearValueController,
    TextEditingController? genderValueController,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      userNameController: userNameController ?? this.userNameController,
      monthValueController: monthValueController ?? this.monthValueController,
      yearValueController: yearValueController ?? this.yearValueController,
      genderValueController:
          genderValueController ?? this.genderValueController,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
