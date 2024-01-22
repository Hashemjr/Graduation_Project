// ignore_for_file: must_be_immutable

part of 'forget_password_bloc.dart';

/// Represents the state of ForgetPassword in the application.
class ForgetPasswordState extends Equatable {
  ForgetPasswordState({this.forgetPasswordModelObj});

  ForgetPasswordModel? forgetPasswordModelObj;

  @override
  List<Object?> get props => [
        forgetPasswordModelObj,
      ];
  ForgetPasswordState copyWith({ForgetPasswordModel? forgetPasswordModelObj}) {
    return ForgetPasswordState(
      forgetPasswordModelObj:
          forgetPasswordModelObj ?? this.forgetPasswordModelObj,
    );
  }
}
