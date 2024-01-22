// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.otpController,
    this.signupModelObj,
  });

  TextEditingController? otpController;

  SignupModel? signupModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? otpController,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      otpController: otpController ?? this.otpController,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
