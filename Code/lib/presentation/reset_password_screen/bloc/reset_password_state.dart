// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.newpasswordController,
    this.confirmpasswordController,
    this.resetPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmpasswordController;

  ResetPasswordModel? resetPasswordModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmpasswordController,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmpasswordController,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
