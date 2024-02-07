// ignore_for_file: must_be_immutable

part of 'signupone_bloc.dart';

/// Represents the state of Signupone in the application.
class SignuponeState extends Equatable {
  SignuponeState({
    this.emailFieldController,
    this.emailFieldController1,
    this.passwordFieldController,
    this.confirmPasswordFieldController,
    this.signuponeModelObj,
  });

  TextEditingController? emailFieldController;

  TextEditingController? emailFieldController1;

  TextEditingController? passwordFieldController;

  TextEditingController? confirmPasswordFieldController;

  SignuponeModel? signuponeModelObj;

  @override
  List<Object?> get props => [
        emailFieldController,
        emailFieldController1,
        passwordFieldController,
        confirmPasswordFieldController,
        signuponeModelObj,
      ];
  SignuponeState copyWith({
    TextEditingController? emailFieldController,
    TextEditingController? emailFieldController1,
    TextEditingController? passwordFieldController,
    TextEditingController? confirmPasswordFieldController,
    SignuponeModel? signuponeModelObj,
  }) {
    return SignuponeState(
      emailFieldController: emailFieldController ?? this.emailFieldController,
      emailFieldController1:
          emailFieldController1 ?? this.emailFieldController1,
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      signuponeModelObj: signuponeModelObj ?? this.signuponeModelObj,
    );
  }
}
