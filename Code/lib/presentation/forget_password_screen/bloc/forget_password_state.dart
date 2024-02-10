// ignore_for_file: must_be_immutable

part of 'forget_password_bloc.dart';

/// Represents the state of ForgetPassword in the application.
class ForgetPasswordState extends Equatable {
  ForgetPasswordState({
    this.emailController,
    this.forgetPasswordModelObj,
  });

  TextEditingController? emailController;

  ForgetPasswordModel? forgetPasswordModelObj;

  @override
  List<Object?> get props => [
        emailController,
        forgetPasswordModelObj,
      ];
  ForgetPasswordState copyWith({
    TextEditingController? emailController,
    ForgetPasswordModel? forgetPasswordModelObj,
  }) {
    return ForgetPasswordState(
      emailController: emailController ?? this.emailController,
      forgetPasswordModelObj:
          forgetPasswordModelObj ?? this.forgetPasswordModelObj,
    );
  }
}
