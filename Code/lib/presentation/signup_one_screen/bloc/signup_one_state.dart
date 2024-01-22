// ignore_for_file: must_be_immutable

part of 'signup_one_bloc.dart';

/// Represents the state of SignupOne in the application.
class SignupOneState extends Equatable {
  SignupOneState({
    this.backgroundImageController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.signupOneModelObj,
  });

  TextEditingController? backgroundImageController;

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  SignupOneModel? signupOneModelObj;

  @override
  List<Object?> get props => [
        backgroundImageController,
        emailEditTextController,
        passwordEditTextController,
        confirmPasswordEditTextController,
        signupOneModelObj,
      ];
  SignupOneState copyWith({
    TextEditingController? backgroundImageController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    SignupOneModel? signupOneModelObj,
  }) {
    return SignupOneState(
      backgroundImageController:
          backgroundImageController ?? this.backgroundImageController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      signupOneModelObj: signupOneModelObj ?? this.signupOneModelObj,
    );
  }
}
