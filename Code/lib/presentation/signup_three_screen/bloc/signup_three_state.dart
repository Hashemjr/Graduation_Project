// ignore_for_file: must_be_immutable

part of 'signup_three_bloc.dart';

/// Represents the state of SignupThree in the application.
class SignupThreeState extends Equatable {
  SignupThreeState({
    this.otpController,
    this.signupThreeModelObj,
  });

  TextEditingController? otpController;

  SignupThreeModel? signupThreeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signupThreeModelObj,
      ];
  SignupThreeState copyWith({
    TextEditingController? otpController,
    SignupThreeModel? signupThreeModelObj,
  }) {
    return SignupThreeState(
      otpController: otpController ?? this.otpController,
      signupThreeModelObj: signupThreeModelObj ?? this.signupThreeModelObj,
    );
  }
}
